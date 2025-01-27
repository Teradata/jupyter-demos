import nbformat
from tqdm import tqdm
from .openai_setup import call_openAI_api
from .summary import get_notebook_summary
from .batches import format_code_context_batch, get_prompt_multi_cell, parse_openai_response_multi_cell
from collections import OrderedDict

def create_exercise_cells(code_cell, parts):
    """
    Create a sequence of cells for an exercise, including headers, code, hints, and solutions.

    Args:
        code_cell (nbformat.NotebookNode): The original code cell from the notebook.
        parts (dict): A dictionary containing parts of the exercise:
            - "code": Placeholder code for the exercise (string).
            - "hint": Hint text for the exercise (string).

    Returns:
        list: A list of `nbformat.NotebookNode` cells representing the exercise,
              including a header, placeholder code, hint, solution, and a footer.
    """
    # 1. Header exercise (Markdown): Add a styled header at the beginning of the exercise.
    exercise_begin = nbformat.v4.new_markdown_cell(
        """<br><br><div style="border-radius: 15px 15px 0 0; background: #a8d5e2; padding: 10px;"></div>"""
    )

    # 2. Exercise cell (Code): Placeholder code cell for users to fill in.
    placeholder_code_cell = nbformat.v4.new_code_cell(parts["code"])

    # 3. Hint cell (Markdown): Collapsible hint with provided content.
    hint_markdown_cell = nbformat.v4.new_markdown_cell(
        f'<details>\n  <summary style="font-weight:bold; color:#9b870c;">Hint</summary>\n'
        f'  <div style="background-color:#fff9db; padding:10px; border-radius:5px; margin-top:5px;">\n\n'
        f'{parts["hint"]}\n  </div>\n</details>'
    )

    # 4. Solution cell (Markdown): Collapsible solution showing the original code as a formatted code block.
    code_as_text = "".join(code_cell.source)  # Convert code cell source to a string
    solution_markdown_cell = nbformat.v4.new_markdown_cell(
        f'<details>\n  <summary style="font-weight:bold; color:#0c9b3b;">Solution</summary>\n'
        f'  <div style="background-color:#dbffdb; padding:10px; border-radius:5px; margin-top:5px;">\n\n'
        f'```python\n{code_as_text}\n```\n  </div>\n</details>'
    )

    # 5. Footer exercise (Markdown): Add a styled footer at the end of the exercise.
    exercise_end = nbformat.v4.new_markdown_cell(
        """<div style=" border-radius: 0 0 15px 15px ; background: #a8d5e2; padding: 10px;"></div><br><br>"""
    )

    # Return the ordered list of cells for the exercise
    return [exercise_begin, placeholder_code_cell, hint_markdown_cell, solution_markdown_cell, exercise_end]


def split_notebook_into_batches(notebook, batch_size):
    """
    Splits the cells of a Jupyter notebook into batches based on the number of code cells,
    while associating any preceding markdown cells with the respective code cells.
    Maintains the original order of cells using an OrderedDict.

    Args:
        notebook (nbformat.NotebookNode): The notebook object to process.
        batch_size (int): The number of code cells in each batch.

    Returns:
        OrderedDict: A nested OrderedDict with the following structure:
            {
                batch_id: {
                    code_cell_num: {
                        "code_cell": <code_cell>,
                        "list_of_preceeding_markdown_cells": [<markdown_cells>]
                    }
                }
            }
            - `batch_id` is the batch number starting from 1.
            - `code_cell_num` is the position of the code cell within the batch.
            - `code_cell` is the actual code cell.
            - `list_of_preceeding_markdown_cells` contains markdown cells that precede the code cell.
    """
    batches = OrderedDict()
    current_batch = 1
    code_cell_count = 0
    markdown_buffer = []

    for cell in notebook.cells:
        if cell.cell_type == "code":
            # Start a new batch if the current one is full
            if code_cell_count == batch_size:
                current_batch += 1
                code_cell_count = 0
            code_cell_count += 1

            # Initialize the batch dictionary if not already present
            if current_batch not in batches:
                batches[current_batch] = OrderedDict()

            # Add the code cell and associated markdown cells to the batch
            batches[current_batch][code_cell_count] = {
                "code_cell": cell,
                "list_of_preceeding_markdown_cells": markdown_buffer
            }
            markdown_buffer = []

        elif cell.cell_type == "markdown":
            # Accumulate markdown cells to be added later
            markdown_buffer.append(cell)

    return batches



def get_openAI_exercises(filename: str, model: str = "gpt-4o", batch_size: int = 5) -> list:
    """
    Generate exercises for a Jupyter Notebook by processing its cells using the OpenAI API.

    Args:
        filename (str): Path to the Jupyter Notebook file.
        model (str): The OpenAI model to use. Default is 'gpt-4o'.
        batch_size (int): Number of cells to process in each batch. Default is 3.

    Returns:
        list: A list of exercises generated for the notebook, based on its code and markdown cells.
    """
    # Load the Jupyter notebook
    with open(filename, 'r', encoding='utf-8') as f:
        input_nb = nbformat.read(f, as_version=4)

    # Generate a summary of the notebook's content
    notebook_summary = get_notebook_summary(filename)
    print("summary completed")

    # Split the notebook into batches of cells for processing
    notebook_batches = split_notebook_into_batches(input_nb, batch_size)

    all_exercises = []  # To store all generated exercises

    # Process each batch of notebook cells
    print("Number of batches:", len(notebook_batches))
    for batch_id, batch_content in notebook_batches.items():
        print("Batch #",batch_id," started.")
        # Format the context for the batch: code cells and preceding markdown cells
        code_cell_list = [c["code_cell"] for c in batch_content.values() ]
        markdown_cells_list = [c["list_of_preceeding_markdown_cells"] for c in batch_content.values()]
        formatted_code_context_batch = format_code_context_batch(
            code_cell_list, markdown_cells_list
        )
        # Generate a multi-cell prompt for OpenAI
        prompt_multicells = get_prompt_multi_cell(notebook_summary, formatted_code_context_batch)
        # Get the OpenAI response for the prompt
        response = call_openAI_api(prompt_multicells, model)
        # Parse the response into structured exercises
        parsed_responses = parse_openai_response_multi_cell(response)
        # Add the parsed exercises to the list
        all_exercises += list(parsed_responses.values())
        print("Batch #", batch_id, " finished.")

    # Return all exercises generated
    return all_exercises


def insert_exercises(filename, all_exercises):
    with open(filename, 'r', encoding='utf-8') as f:
        input_nb = nbformat.read(f, as_version=4)

    code_cell_counter = 0
    output_cells = []
    for cell in input_nb.cells:
        output_cells.append(cell)
        if cell.cell_type == 'code':
            exercise_dict = all_exercises[code_cell_counter]
            if exercise_dict is not None:
                exercise_cells = create_exercise_cells(cell, exercise_dict)
                output_cells.extend(exercise_cells)
            code_cell_counter += 1

    # Assemble notebook
    output_nb = nbformat.v4.new_notebook(cells=output_cells)
    output_nb.metadata = input_nb.metadata

    return output_nb

def call_exercise(filename, model: str = "gpt-4o", batch_size: int = 5, suffix: str = "_with-exercises" ):
    all_exercises = get_openAI_exercises(filename, model, batch_size)
    output_nb = insert_exercises(filename, all_exercises)

    # Save the modified notebook
    output_filename = filename.replace('.ipynb', f'{suffix}.ipynb')
    with open(output_filename, 'w', encoding='utf-8') as f:
        nbformat.write(output_nb, f)
    print(f"Processed notebook saved as {output_filename}")
