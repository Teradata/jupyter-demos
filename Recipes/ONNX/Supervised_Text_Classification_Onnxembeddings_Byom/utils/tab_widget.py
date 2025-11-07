from IPython.display import display, HTML
import uuid  
import base64
from io import BytesIO
import matplotlib.pyplot as plt
import uuid  # To generate unique IDs
import teradataml as tdml
try:
    # if tdml version >= 20.0.0.4
    tdml.display.enable_ui = False
except:
    pass

def display_content_in_tabs(content_dict, tab_index_open=0):
    """
    Displays multiple pieces of HTML content in a tabbed interface within a Jupyter Notebook.

    Args:
        content_dict (dict): A dictionary where keys are tab titles (str) and values are HTML content (str).
        tab_index_open (int): Index of the tab to be opened by default. Negative values count from the end.

    Example:
        content_dict = {
            "Tab 1": "<p>This is content for Tab 1</p>",
            "Tab 2": "<p>This is content for Tab 2</p>"
        }
        display_content_in_tabs(content_dict, tab_index_open=-1)
    """
    unique_id = str(uuid.uuid4()).replace("-", "")  # Unique identifier for this tab instance

    num_tabs = len(content_dict)
    tab_index_open = (tab_index_open % num_tabs) if num_tabs > 0 else 0  # Handle negative indices

    html_code = f"""
    <style>
        .tab-container-{unique_id} {{
            border-bottom: 2px solid #ddd;
            display: flex;
        }}
        .tab-label-{unique_id} {{
            padding: 10px 15px;
            cursor: pointer;
            border: 1px solid #ddd;
            border-bottom: none;
            background: #f1f1f1;
            margin-right: 5px;
        }}
        .tab-label-{unique_id}.active {{
            background: white;
            border-top: 2px solid #007bff;
            font-weight: bold;
        }}
        .tab-content-{unique_id} {{
            display: none;
            padding: 15px;
            border: 1px solid #ddd;
            text-align: left;
        }}
        .tab-content-{unique_id}.active {{
            display: block;
        }}
    </style>
    
    <div class="tab-container-{unique_id}">
    """

    tab_ids = []  # To store the tab ids for each content
    for i, (tab_title, _) in enumerate(content_dict.items()):
        tab_id = str(uuid.uuid4()).replace("-", "")  # Unique ID for each tab
        tab_ids.append(tab_id)
        active_class = "active" if i == tab_index_open else ""
        html_code += f'<div class="tab-label-{unique_id} {active_class}" data-tab="{tab_id}">{tab_title}</div>'

    html_code += "</div>"

    # Add the content for each tab
    for i, (tab_title, content) in enumerate(content_dict.items()):
        tab_id = tab_ids[i]
        display_style = "active" if i == tab_index_open else ""
        html_code += f'<div class="tab-content-{unique_id} {display_style}" id="tab-{tab_id}">{content}</div>'

    # JavaScript to handle tab switching
    html_code += f"""
    <script>
        (function() {{
            let tabs = document.querySelectorAll(".tab-label-{unique_id}");
            let contents = document.querySelectorAll(".tab-content-{unique_id}");
            
            tabs.forEach((tab) => {{
                tab.addEventListener("click", function() {{
                    tabs.forEach(t => t.classList.remove("active"));
                    contents.forEach(c => c.classList.remove("active"));
                    
                    let tabId = this.getAttribute("data-tab");
                    document.getElementById("tab-" + tabId).classList.add("active");
                    this.classList.add("active");
                }});
            }});
        }})();
    </script>
    """

    display(HTML(html_code))


def display_dataframes_in_tabs(table_names, tab_index_open=0):
    """
    Displays multiple Teradata DataFrames in a tabbed interface within a Jupyter Notebook.

    Args:
        table_names (list of str): A list of table names to be retrieved as Teradata DataFrames.
        tab_index_open (int): Index of the tab to be opened by default. Negative values count from the end.

    Example:
        table_names = ["table1", "table2"]
        display_dataframes_in_tabs(table_names, tab_index_open=-1)
    """
    try:
        # if tdml version >= 20.0.0.4
        tdml.display.enable_ui = False
    except:
        pass
    display_content_in_tabs(
        {t: tdml.DataFrame(t)._repr_html_() for t in table_names}, 
        tab_index_open=tab_index_open
    )



def display_wordclouds_in_tabs(wordclouds):
    """
    Displays multiple WordCloud objects in a tabbed interface within a Jupyter Notebook.

    Args:
        wordclouds (list of wordcloud.wordcloud.WordCloud): A list of WordCloud objects to be displayed.

    Example:
        from wordcloud import WordCloud
        
        wordcloud1 = WordCloud().generate("data science machine learning python")
        wordcloud2 = WordCloud().generate("deep learning ai neural networks")

        display_wordclouds_in_tabs([wordcloud1, wordcloud2])

    The function converts each WordCloud object into a base64-encoded image and generates HTML content.
    It then passes the result to display_content_in_tabs() for rendering.
    """

    def get_img_html(wordcloud, tab_id):
        # Convert word cloud to base64 image
        img_buffer = BytesIO()
        fig, ax = plt.subplots(figsize=(8, 4))
        ax.imshow(wordcloud, interpolation="bilinear")
        ax.axis("off")
        plt.title(tab_id)
        plt.savefig(img_buffer, format='png', bbox_inches='tight')
        plt.close(fig)
    
        img_base64 = base64.b64encode(img_buffer.getvalue()).decode()
        img_html = f'<img src="data:image/png;base64,{img_base64}" alt="{tab_id}">'
    
        return img_html

    wordcloud_dict = {}
    for i, wordcloud in enumerate(wordclouds):
        wordcloud_dict[f"Wordcloud {i}"] = get_img_html(wordcloud,f"Wordcloud {i}") 

    display_content_in_tabs(wordcloud_dict)
        
        
    
    


