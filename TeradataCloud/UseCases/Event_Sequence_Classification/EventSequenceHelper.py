import pandas as pd
import numpy as np
import plotly.graph_objects as go
import plotly.io as pio
from collections import defaultdict
from typing import List, Dict, Tuple, Any
import colorsys

def generate_color_palette(n: int, terminal_color: str = '#e74c3c') -> List[str]:
    """
    Generate a visually distinct color palette for n columns.
    
    Args:
        n: Number of colors needed (including terminal)
        terminal_color: Color for the terminal/final step
    
    Returns:
        List of hex color strings
    """
    colors = []
    for i in range(n - 1):
        # Use HSL color space for evenly distributed hues
        hue = i / (n - 1) if n > 1 else 0
        # Adjust hue to avoid red (reserved for terminal)
        hue = (hue * 0.7 + 0.55) % 1.0  # Skip red range
        rgb = colorsys.hls_to_rgb(hue, 0.5, 0.7)
        hex_color = '#{:02x}{:02x}{:02x}'.format(
            int(rgb[0] * 255), int(rgb[1] * 255), int(rgb[2] * 255)
        )
        colors.append(hex_color)
    colors.append(terminal_color)  # Terminal color
    return colors

def hex_to_rgba(hex_color: str, alpha: float = 0.4) -> str:
    """Convert hex color to rgba string."""
    hex_color = hex_color.lstrip('#')
    r, g, b = tuple(int(hex_color[i:i+2], 16) for i in (0, 2, 4))
    return f'rgba({r}, {g}, {b}, {alpha})'

def generate_sankey_data(
    sequences: List[List[str]],
    num_steps: int = 4,
    top_n: int = 10,
    min_flow: int = 1
) -> Dict[str, Any]:
    """
    Generate Sankey diagram data for N steps from sequences.
    
    Args:
        sequences: List of action sequences (each sequence is a list of action strings)
        num_steps: Number of steps to show (including terminal)
        top_n: Number of top actions to show per column
        min_flow: Minimum flow threshold for links
    
    Returns:
        Dictionary containing nodes, links, and statistics
    """
    # Initialize data structures for each step
    step_counts = [defaultdict(int) for _ in range(num_steps)]
    transitions = [defaultdict(int) for _ in range(num_steps - 1)]
    
    # Process each sequence
    valid_sequences = 0
    for seq in sequences:
        if len(seq) < num_steps:
            continue  # Skip sequences shorter than num_steps
        
        valid_sequences += 1
        
        # Get the last num_steps actions
        last_steps = seq[-num_steps:]
        
        # Count actions at each step position
        for step_idx, action in enumerate(last_steps):
            step_counts[step_idx][action] += 1
        
        # Count transitions between consecutive steps
        for i in range(len(last_steps) - 1):
            key = (last_steps[i], last_steps[i + 1])
            transitions[i][key] += 1
    
    # Get top N actions for each step
    top_actions = []
    for counts in step_counts:
        sorted_actions = sorted(counts.items(), key=lambda x: -x[1])[:top_n]
        top_actions.append([action for action, _ in sorted_actions])
    
    # Generate color palette
    colors = generate_color_palette(num_steps)
    
    # Build nodes list
    nodes = []
    node_colors = []
    node_indices = [{} for _ in range(num_steps)]
    node_index = 0
    
    for step_idx, actions in enumerate(top_actions):
        color = colors[step_idx]
        for action in actions:
            nodes.append(action)
            node_colors.append(color)
            node_indices[step_idx][action] = node_index
            node_index += 1
    
    # Build links list
    sources = []
    targets = []
    values = []
    link_colors = []
    
    for trans_idx, trans in enumerate(transitions):
        source_step = trans_idx
        target_step = trans_idx + 1
        source_color = colors[source_step]
        
        for (source_action, target_action), count in trans.items():
            if count < min_flow:
                continue
            
            source_idx = node_indices[source_step].get(source_action)
            target_idx = node_indices[target_step].get(target_action)
            
            if source_idx is not None and target_idx is not None:
                sources.append(source_idx)
                targets.append(target_idx)
                values.append(count)
                link_colors.append(hex_to_rgba(source_color, 0.4))
    
    # Calculate statistics
    stats = {
        'total_sequences': valid_sequences,
        'total_nodes': len(nodes),
        'total_links': len(sources),
        'total_flow': sum(values),
        'top_actions_per_step': top_actions
    }
    
    return {
        'nodes': nodes,
        'node_colors': node_colors,
        'sources': sources,
        'targets': targets,
        'values': values,
        'link_colors': link_colors,
        'colors': colors,
        'stats': stats
    }

def create_sankey_diagram(
    sequences: List[List[str]],
    num_steps: int = 4,
    top_n: int = 10,
    min_flow: int = 1,
    title: str = "Action Flow Sankey Diagram",
    width: int = 1200,
    height: int = 800
) -> go.Figure:
    """
    Create a Plotly Sankey diagram for N steps.
    
    Args:
        sequences: List of action sequences
        num_steps: Number of steps to show (including terminal)
        top_n: Number of top actions to show per column
        min_flow: Minimum flow threshold for links
        title: Chart title
        width: Figure width in pixels
        height: Figure height in pixels
    
    Returns:
        Plotly Figure object
    """
    # Generate data
    data = generate_sankey_data(sequences, num_steps, top_n, min_flow)
    
    # Create step labels for annotations
    step_labels = []
    for i in range(num_steps):
        if i == num_steps - 1:
            step_labels.append("Terminal")
        else:
            step_num = i - (num_steps - 1)
            step_labels.append(f"Step {step_num}")
    
    # Create the Sankey diagram
    fig = go.Figure(data=[go.Sankey(
        arrangement='snap',
        node=dict(
            pad=20,
            thickness=25,
            line=dict(color="white", width=1),
            label=data['nodes'],
            color=data['node_colors'],
            hovertemplate='%{label}<br>Total Flow: %{value}<extra></extra>'
        ),
        link=dict(
            source=data['sources'],
            target=data['targets'],
            value=data['values'],
            color=data['link_colors'],
            hovertemplate='%{source.label} → %{target.label}<br>Count: %{value}<extra></extra>'
        )
    )])
    
    # Create annotations for column labels
    annotations = []
    for i, label in enumerate(step_labels):
        x_pos = i / (num_steps - 1) if num_steps > 1 else 0.5
        annotations.append(dict(
            x=x_pos,
            y=1.08,
            xref='paper',
            yref='paper',
            text=f"<b>{label}</b>",
            showarrow=False,
            font=dict(size=14, color=data['colors'][i]),
            align='center'
        ))
    
    # Update layout
    fig.update_layout(
        title=dict(
            text=f"<b>{title}</b><br><br><br><sup>Showing last {num_steps} steps of each sequence | "
                 f"Top {top_n} actions per step | Min flow: {min_flow}</sup>",
            font=dict(size=18),
            x=0.5,
            xanchor='center',
            y=0.97,
            yanchor='top'
        ),
        font=dict(size=11, family="Arial"),
        height=height,
        width=width,
        paper_bgcolor='white',
        plot_bgcolor='white',
        annotations=annotations,
        margin=dict(t=140, l=50, r=50, b=50)
    )
    
    return fig


def print_statistics(data: Dict[str, Any], num_steps: int) -> None:
    """Print statistics about the Sankey diagram data."""
    stats = data['stats']
    print("\n" + "="*60)
    print("SANKEY DIAGRAM STATISTICS")
    print("="*60)
    print(f"Number of steps displayed: {num_steps}")
    print(f"Valid sequences analyzed: {stats['total_sequences']}")
    print(f"Total unique nodes: {stats['total_nodes']}")
    print(f"Total connections (links): {stats['total_links']}")
    print(f"Total flow volume: {stats['total_flow']}")
    print("\nTop actions per step:")
    for i, actions in enumerate(stats['top_actions_per_step']):
        if i == num_steps - 1:
            step_name = "Terminal"
        else:
            step_name = f"Step {i - (num_steps - 1)}"
        print(f"  {step_name}: {', '.join(actions[:5])}...")
    print("="*60 + "\n")

def add_transition_probability(df):
    # Get all unique states
    states = list(set(df['a'].unique()) | set(df['b'].unique()))
    
    # Create all possible pairs
    from itertools import product
    all_pairs = pd.DataFrame(list(product(states, states)), columns=['a', 'b'])
    
    # Merge with existing data, filling missing with 0
    df_complete = all_pairs.merge(df[['a', 'b', 'counts']], on=['a', 'b'], how='left')
    df_complete['counts'] = df_complete['counts'].fillna(0)
    
    # Add Laplacian smoothing (add 1 to all counts)
    alpha = 1  # smoothing parameter
    df_complete['counts_smoothed'] = df_complete['counts'] + alpha
    
    # Recalculate transition probabilities
    df_complete['probability'] = (df_complete['counts_smoothed'] / 
                                  df_complete.groupby('a')['counts_smoothed'].transform('sum'))
    return(df_complete)

