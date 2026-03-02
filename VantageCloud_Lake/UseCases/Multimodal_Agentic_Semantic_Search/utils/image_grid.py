# utils/image_grid.py

import json
import ipywidgets as widgets
from IPython.display import display, HTML


class GridSelection:
    def __init__(self):
        self.selected_id = None

    def __repr__(self):
        return f"GridSelection(selected_id={self.selected_id!r})"


def _build_image_url(record_locator, filename):
    """
    Parses the record_locator field and combines it with the filename
    to produce a public HTTPS URL.

    record_locator is expected to be a dict or JSON string of the form:
        {"protocol": "s3", "remote_file_path": "s3://bucket/path/to/dir/"}

    Returns a URL of the form:
        https://bucket.s3.amazonaws.com/path/to/dir/filename
    """
    if isinstance(record_locator, str):
        record_locator = json.loads(record_locator)

    s3_path = record_locator["remote_file_path"].rstrip("/")

    # s3://bucket/key/path  ->  bucket, key/path
    without_scheme = s3_path.replace("s3://", "", 1)
    bucket, _, prefix = without_scheme.partition("/")

    key = f"{prefix}/{filename}" if prefix else filename

    return f"https://{bucket}.s3.amazonaws.com/{key}"


def display_image_grid(df, on_select=None):
    """
    Renders a 2x2 image grid from a DataFrame.
    Each cell shows an image and a Select button below it.

    Parameters
    ----------
    df : DataFrame
        Must contain 'record_locator', 'filename', and 'record_id' columns.
        record_locator should be a dict or JSON string with 'remote_file_path'.
    on_select : callable, optional
        Called with the record_id string each time the selection changes.

    Returns
    -------
    GridSelection
        A simple object whose .selected_id reflects the current selection.
    """
    subset = df.head(4).reset_index(drop=True)
    selection = GridSelection()

    status = widgets.HTML(
        value="<i style='color: #888;'>No image selected.</i>",
        layout=widgets.Layout(margin="0 0 12px 0")
    )

    select_buttons = []

    def make_handler(record_id):
        def handler(btn):
            selection.selected_id = record_id
            for b in select_buttons:
                b.button_style = ""
                b.description = "Select"
            btn.button_style = "success"
            btn.description = "Selected"
            status.value = f"<b>Selected record_id:</b> {record_id}"
            if on_select is not None:
                on_select(record_id)
        return handler

    cells = []

    for i in range(4):
        if i < len(subset):
            row = subset.iloc[i]
            rid = str(row["record_id"])
            fname = str(row["filename"])

            try:
                url = _build_image_url(row["record_locator"], str(row["filename"]))
            except Exception as e:
                url = ""
                print(f"Warning: could not build URL for record_id {rid}: {e}")

            image = widgets.HTML(
                value=(
                    f'<img src="{url}" '
                    f'style="width:100%; height:200px; object-fit:cover; display:block;"/>'
                )
            )
            label = widgets.HTML(
                value=f'<div style="padding:6px 10px; font-size:12px; color:#666;">{fname}</div>'
            )
            btn = widgets.Button(
                description="Select",
                layout=widgets.Layout(width="100%")
            )
            btn.on_click(make_handler(rid))
            select_buttons.append(btn)

            cell = widgets.VBox(
                [image, label, btn],
                layout=widgets.Layout(
                    border="1px solid #ddd",
                    border_radius="6px",
                    overflow="hidden",
                    flex="1"
                )
            )
        else:
            cell = widgets.Box(
                layout=widgets.Layout(
                    flex="1",
                    min_height="250px",
                    background_color="#f0f0f0",
                    border_radius="6px"
                )
            )

        cells.append(cell)

    row_layout = widgets.Layout(display="flex", gap="14px", width="100%")
    row1 = widgets.HBox(cells[:2], layout=row_layout)
    row2 = widgets.HBox(cells[2:], layout=row_layout)

    display(widgets.VBox(
        [status, row1, row2],
        layout=widgets.Layout(max_width="720px")
    ))

    return selection