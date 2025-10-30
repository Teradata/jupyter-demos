from topics_distance import get_embeddings_for_topics_query, calculate_similarity_topics
import teradataml as tdml
import plotly.express as px
import ipywidgets as widgets
from ipywidgets import Layout
from IPython.display import display, Markdown

def get_newtopic_plot(threshold = 0.1):
    df_counts = tdml.DataFrame.from_query(f"""
        SEL 
        year_month, 
        topic, 
        COUNT(row_id) as num_comments
        FROM consumer_complaint_topic_similarity
        WHERE similarity >= {threshold}
        GROUP BY year_month, topic
        """).to_pandas().sort_values(["year_month","topic"])
    df_pivot = df_counts.pivot(index='year_month', columns='topic', values='num_comments').fillna(0)
    df_pivot = df_pivot.reset_index()
    fig = px.line(
        df_pivot, 
        x='year_month', 
        y=df_pivot.columns[1:], 
        title=f'Number of Comments per Topics (similarity >= {threshold:.2f})',
        labels={
            'year_month': 'Time',
            'value': 'Number of Complaints',
            'variable': 'Topic'
        }
    )
    fig.update_layout(
        legend=dict(orientation="h", yanchor="top", y=-0.2),
        height=600  # Adjust the height as needed
    )
    fig.update_xaxes(range=["2024-01-01", "2024-12-31"])

    return fig

def get_all_topics():
    all_topics = tdml.execute_sql("SELECT topic FROM complaint_topics").fetchall()
    all_topics = [x[0] for x in all_topics]    
    all_topics.sort()
    return all_topics



def get_complaints_app():
    my_box_layout = Layout(border='1px solid lightgrey', padding='3px', margin='3px', width='auto')
    
    header = widgets.HTML(value="<h1>Prevalence of Topics in Consumer Complaints</h1>")
    
    list_of_topics = widgets.Output()
    
    def update_listoftopics():
        with list_of_topics:
            list_of_topics.clear_output(wait=True)
            display(Markdown("\n".join(["- " + x for x in get_all_topics()])))
    
    update_listoftopics()
    
    list_of_topic_box = widgets.VBox([
        widgets.HTML("<h3>List of Topics</h3>"),
        list_of_topics
    ], layout=my_box_layout)
    
    textarea = widgets.Textarea(
        value='',
        placeholder='Enter Topics here;semicolon to enter multiple topics;another topic',
        layout=widgets.Layout(width='95%', height='200px')
    )
    
    button = widgets.Button(description='Add Topic(s)', button_style='primary')
    
    threshold_slider = widgets.FloatSlider(
        value=0.65, min=0.1, max=1.0, step=0.05,
        description='Threshold:', continuous_update=False
    )
    
    status = widgets.Output()
    
    topics_tab = widgets.VBox([
        widgets.HTML('<hr style="height:0pt; visibility:hidden;" />'),
        threshold_slider,
        widgets.HTML('<hr style="height:0pt; visibility:hidden;" />'),
        list_of_topic_box,
    ])
    
    newtopics_tab = widgets.VBox([textarea, button, widgets.HTML("<hr>Status:"), status])
    
    tabs = widgets.Tab(children=[topics_tab, newtopics_tab])
    for i, title in enumerate(['Start', 'Add new Topics']):
        tabs.set_title(i, title)
    
    center_output = widgets.Output()
    
    app_layout = widgets.VBox([
        header,
        widgets.AppLayout(
            header=None, left_sidebar=tabs, center=center_output,
            right_sidebar=None, footer=None, pane_widths=[3, 7, 0]
        )
    ])
    
    def update_plot(change):
        with center_output:
            center_output.clear_output(wait=True)
            fig = get_newtopic_plot(threshold=change['new'])
            fig.show()
    
    threshold_slider.observe(update_plot, names='value')
    
    def on_button_click(b):
        topics = [t.strip() for t in textarea.value.split(';') if t.strip()]
        existing_topics = get_all_topics()
        num_topics = len(existing_topics)
        topics_dict = {i+num_topics: topic for i, topic in enumerate(topics) if topic not in existing_topics}
        
        with status:
            status.clear_output(wait=True)
            if not topics_dict:
                print("Please enter at least one new topic.")
                return
            
            print("Calculating new embeddings and vector distances...")
            calculate_similarity_topics(topics_dict)
            print("Done.")
        
        update_listoftopics()
        tabs.selected_index = 0
        update_plot({'new': threshold_slider.value})
    
    button.on_click(on_button_click)
    
    update_plot({'new': threshold_slider.value})
    display(app_layout)
