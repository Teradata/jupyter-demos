from .utils import clean_markdowncell_for_prompts
from collections import OrderedDict

def format_code_context_batch(code_cell_list, markdown_cells_list):
    """
    Converts code and context batches into the required formatted string for create_prompt_exercises.

    Args:
        code_cells (list): List of code cells (each a dictionary with 'source' and other metadata).
        context_cells (list): List of Lists of markdown cells preceeding each code cell.

    Returns:
        str: Formatted string representing the batch of code and context.
    """
    assert len(code_cell_list) == len(markdown_cells_list)

    parsed_output = []

    for i, (code_cell, markdown_cells) in enumerate(zip(code_cell_list, markdown_cells_list), start=1):
        cell_id = f"cell_{i}"

        markdown_content = []

        # Iterate through the cells in the notebook
        for cell in markdown_cells:
            # Get the cell's source content
            cell_content = "".join(cell.source)
            # Clean the markdown content for prompts
            cleaned_content = clean_markdowncell_for_prompts(cell_content)
            # Append the cleaned content to the list
            markdown_content.append(cleaned_content)

        context_md = "".join(markdown_content)

        formatted_cell = (
            f"Code Cell {i} (ID: {cell_id}):\n"
            f"===BEGIN-CONTEXT===\n{context_md.strip()}\n===END-CONTEXT===\n"
            f"===BEGIN-CODE===\n{code_cell.source.strip()}\n===END-CODE===\n"
        )
        parsed_output.append(formatted_cell)

    formatted_code_context_batch = "\n".join(parsed_output)

    return formatted_code_context_batch

def get_prompt_multi_cell(notebook_summary, cells_with_context ):
    prompt_template = f"""
Notebook Summary:
{notebook_summary}

For each of the following code cells, transform them into interactive coding exercises by providing:
1. Placeholder Version: Replace strategic parts of the code with blanks (___) for learners to fill in.
2. Hint: A concise hint to help the learner solve the exercise.

For each code cell, provide the output in the following structured format:

- For each cell, wrap the output (CODE and HINT) in a distinct wrapper with the cell number:
===CELL-N===
===BEG-CODE===
Placeholder code with ___ for blanks.
Place one blank (`___`) per line. If multiple blanks are needed, break the line into multiple lines. 
Add a comment after each blank explaining what is expected. This is # in standard python, but if it is a longer string and part of a SQL query, dont add it in the same line as the string but add the comments before
   Example:
   def filter_rows(df):
       df = df.___  # Replace with the method to filter rows based on a condition.
Replace critical components where it matters most:
   - Function or attribute names (e.g., df.___ to replace an attribute or method).
   - Parameter names or values in a function call (e.g., df.assign(___ = df.old_col + 1) or df.assign(new_col = ___)).
   - Key parts of loops or operations (e.g., for ___ in range(10): or print(___)).
===END-CODE===
===BEG-HINT===
Hint in Plain Text
For multiple blanks in a cell, enumerate the hints to provide clarity.
This should not just be a repetion of the comment, but give some hints that that can guide them towards a solution.
===END-HINT===
===END-CELL-N===

- If a cell is irrelevant (e.g., only imports and no other relevant code, trivial print statements, run another notebook, shell commands), for example
===BEGIN-CODE===
!git clone https://github.com/martinhillebrand/ClearscapeWorkshops.git
===END-CODE===
or
===BEGIN-CODE===
%run -i ../startup.ipynb
===END-CODE===
or
===BEGIN-CODE===
import os
import warnings
warnings.filterwarnings('ignore')
from sklearn import tree
from xgboost import XGBClassifier
===END-CODE===
return the following:
===CELL-N===
NO_EXERCISE
===END-CELL-N===

If there are multiple cells, ensure each response includes the corresponding cell number and ID to keep them distinguishable.


Here is an example:

this would be the input:
Code Cell 8 (ID: cell_8):
===BEGIN-CONTEXT===
Let's start by some basic geometry, the are of a circle!
===END-CONTEXT===
===BEGIN-CODE===
def calculate_area(radius):
    pi = 3.14159
    area = pi * (radius ** 2)
    return area
print(calculate_area(5))
===END-CODE===

and this could be your result:
===CELL-N===
===BEG-CODE===
def calculate_area(radius):
    pi = 3.14159
    area = (___ *        # part one of the formula
            (___ ** 2))  # part two of the formula
    return area
print(___(5)) # testing the function with 5 as radius
===END-CODE===
===BEG-HINT===
1. Hint: It is either pi or radius. Which one would you put in here?
2. Hint: It is either pi or radius. Which one would you put in here? And note, it is squared!
3. Hint: You have just created the function, it starts with "c" ;-)
===END-HINT===
===END-CELL-N===



===================================
Here are the code cells to process:

{cells_with_context}

Only return the required content. no additional text before or after the cells
===CELL
"""
    return prompt_template


def parse_openai_response_multi_cell(response):
    """
    Parses the OpenAI response containing multiple cell outputs into a structured dictionary.

    Args:
        response (str): The OpenAI response as a string.

    Returns:
        dict: A dictionary where keys are cell numbers (e.g., "CELL-1") and values are:
              - A dictionary with "code" and "hint" keys for valid cells.
              - None for cells marked as NO_EXERCISE.
    """
    cells = OrderedDict()
    # Split the response into individual cell sections
    cell_sections = [cell.strip() for cell in response.split("===CELL-") if cell.strip()]

    for cell_section in cell_sections:
        # Extract cell number
        cell_number = cell_section.split("===")[0].strip()
        cell_key = f"CELL-{cell_number}"

        # Check for NO_EXERCISE
        if "NO_EXERCISE" in cell_section:
            cells[cell_key] = None
            continue

        # Check for required code and hint wrappers
        if not all(x in cell_section for x in ["===BEG-CODE===", "===END-CODE===", "===BEG-HINT===", "===END-HINT==="]):
            cells[cell_key] = None
            continue

        # Extract code and hint
        code = cell_section.split("===BEG-CODE===")[1].split("===END-CODE===")[0].strip()
        hint = cell_section.split("===BEG-HINT===")[1].split("===END-HINT===")[0].strip()

        # Store parsed results
        cells[cell_key] = {"code": code, "hint": hint}

    return cells