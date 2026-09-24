"""
event_flow_graph.py
-------------------
Generates an interactive force-directed event flow graph from a DataFrame
containing user-session event streams.

Usage:
    from event_flow_graph import generate_event_flow
    generate_event_flow(
        df,
        user_col="UserID",
        session_col="SessionID",
        time_col="TimeStamp",
        event_col="Event",
        output_path="event_flow.html"
    )
"""

import json
import os
from collections import defaultdict

import pandas as pd


def _compute_transitions(df, user_col, session_col, time_col, event_col):
    """
    Compute transition counts and probabilities from the event stream.

    Groups by (user_col, session_col), orders by time_col within each group,
    then counts consecutive event pairs as transitions.

    Returns:
        node_ids  : list of unique event names sorted by descending degree
        node_data : list of [event_count, degree] per node
        edge_data : list of [src_idx, tgt_idx, count, probability] per edge
        stats     : dict with summary statistics
    """
    df = df[[user_col, session_col, time_col, event_col]].copy()
    df = df.sort_values([user_col, session_col, time_col])

    # Build sessions and count transitions
    transition_counts = defaultdict(int)
    event_counts = defaultdict(int)

    current_key = None
    prev_event = None

    for row in df.itertuples(index=False):
        uid = getattr(row, user_col)
        sid = getattr(row, session_col)
        evt = getattr(row, event_col)
        key = (uid, sid)

        event_counts[evt] += 1

        if key == current_key and prev_event is not None:
            transition_counts[(prev_event, evt)] += 1
        
        current_key = key
        prev_event = evt

    # Compute outgoing totals for probability
    source_totals = defaultdict(int)
    for (src, _), count in transition_counts.items():
        source_totals[src] += count

    # Build edge list with probabilities
    edges_raw = []
    for (src, tgt), count in transition_counts.items():
        prob = round(count / source_totals[src], 4)
        edges_raw.append((src, tgt, count, prob))

    # Compute node degree (sum of in + out transition counts)
    node_degree = defaultdict(int)
    for src, tgt, count, _ in edges_raw:
        node_degree[src] += count
        node_degree[tgt] += count

    # Sort nodes by degree descending
    all_events = sorted(node_degree.keys(), key=lambda e: -node_degree[e])

    id_to_idx = {e: i for i, e in enumerate(all_events)}
    node_data = [[event_counts.get(e, 0), node_degree[e]] for e in all_events]

    # Convert edges to index-based, sorted by count descending
    edge_data = sorted(
        [[id_to_idx[s], id_to_idx[t], c, p] for s, t, c, p in edges_raw],
        key=lambda x: -x[2]
    )

    stats = {
        "total_rows": len(df),
        "unique_events": len(all_events),
        "total_edges": len(edge_data),
        "total_transitions": sum(c for _, _, c, _ in edge_data),
    }

    return all_events, node_data, edge_data, stats


def _get_html_template():
    """Return the HTML template with a {DATA_PLACEHOLDER} marker."""
    # ── CSS + HTML structure ──
    before = r'''<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Event Flow Atlas</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,400;0,9..40,500;0,9..40,700&family=JetBrains+Mono:wght@400;500&display=swap');
:root{
  --bg:#08090d;--bg2:#101318;--bg3:#181c24;--bdr:#242a38;
  --txt:#c0c6d2;--txt2:#6d7690;--acc:#5ba0f5;--glow:rgba(91,160,245,.12);
}
*{margin:0;padding:0;box-sizing:border-box}
html,body{height:100%;overflow:hidden;font-family:'DM Sans',sans-serif;background:var(--bg);color:var(--txt)}
#app{display:flex;height:100vh}
#sb{width:330px;min-width:330px;background:var(--bg2);border-right:1px solid var(--bdr);display:flex;flex-direction:column;z-index:10}
.sh{padding:18px 20px 14px;border-bottom:1px solid var(--bdr)}
.sh h1{font-size:16px;font-weight:700;color:#e8eaf0;letter-spacing:-.3px}
.sh p{font-size:10px;color:var(--txt2);font-family:'JetBrains Mono',monospace;margin-top:3px}
#ctrls{flex:1;overflow-y:auto;padding:14px 20px 80px}
#ctrls::-webkit-scrollbar{width:3px}#ctrls::-webkit-scrollbar-thumb{background:var(--bdr);border-radius:2px}
.cg{margin-bottom:16px}
.cg>label{display:flex;justify-content:space-between;font-size:9.5px;font-weight:500;text-transform:uppercase;letter-spacing:.7px;color:var(--txt2);margin-bottom:6px}
.cg .v{font-family:'JetBrains Mono',monospace;font-size:11px;color:var(--acc);text-transform:none;letter-spacing:0}
input[type=range]{-webkit-appearance:none;width:100%;height:3px;background:var(--bg3);border-radius:2px;outline:none}
input[type=range]::-webkit-slider-thumb{-webkit-appearance:none;width:14px;height:14px;border-radius:50%;background:var(--acc);cursor:pointer;box-shadow:0 0 6px var(--glow)}
.sg{display:grid;grid-template-columns:1fr 1fr;gap:6px;margin-bottom:14px}
.sc{background:var(--bg3);border:1px solid var(--bdr);border-radius:7px;padding:8px 10px}
.sc .n{font-family:'JetBrains Mono',monospace;font-size:17px;font-weight:700;color:#e8eaf0}
.sc .l{font-size:9px;text-transform:uppercase;letter-spacing:.4px;color:var(--txt2);margin-top:1px}
.br{display:flex;gap:5px;margin-top:6px}
.sb{font-family:'DM Sans',sans-serif;font-size:10px;padding:4px 10px;border-radius:5px;border:1px solid var(--bdr);background:var(--bg3);color:var(--txt);cursor:pointer;transition:all .15s}
.sb:hover{border-color:var(--acc);color:#eee}.sb.a{background:var(--acc);border-color:var(--acc);color:#000;font-weight:500}
.ef-wrap{position:relative}
.ef-toggle{width:100%;text-align:left;font-family:'DM Sans',sans-serif;font-size:11px;padding:7px 32px 7px 10px;border-radius:6px;border:1px solid var(--bdr);background:var(--bg3);color:var(--txt);cursor:pointer;transition:border-color .15s;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.ef-toggle:hover,.ef-toggle:focus{border-color:var(--acc);outline:none}
.ef-toggle::after{content:'▾';position:absolute;right:10px;top:50%;transform:translateY(-50%);color:var(--txt2);font-size:10px}
.ef-dd{display:none;position:absolute;left:0;right:0;top:100%;margin-top:4px;background:var(--bg2);border:1px solid var(--bdr);border-radius:8px;max-height:340px;overflow-y:auto;z-index:50;box-shadow:0 12px 40px rgba(0,0,0,.6);padding:6px 0}
.ef-dd.open{display:block}
.ef-dd::-webkit-scrollbar{width:4px}.ef-dd::-webkit-scrollbar-thumb{background:var(--bdr);border-radius:2px}
.ef-actions{display:flex;gap:4px;padding:4px 10px 8px;border-bottom:1px solid var(--bdr);margin-bottom:4px}
.ef-abtn{font-family:'DM Sans',sans-serif;font-size:9px;padding:3px 8px;border-radius:4px;border:1px solid var(--bdr);background:var(--bg3);color:var(--acc);cursor:pointer;text-transform:uppercase;letter-spacing:.4px;font-weight:500}
.ef-abtn:hover{background:var(--acc);color:#000;border-color:var(--acc)}
.ef-search{width:calc(100% - 20px);margin:0 10px 6px;padding:5px 8px;background:var(--bg);border:1px solid var(--bdr);border-radius:4px;color:var(--txt);font-family:'DM Sans',sans-serif;font-size:11px;outline:none}
.ef-search:focus{border-color:var(--acc)}
.ef-item{display:flex;align-items:center;gap:8px;padding:4px 12px;cursor:pointer;font-size:11px;transition:background .1s}
.ef-item:hover{background:var(--bg3)}
.ef-item input{accent-color:var(--acc);cursor:pointer;width:13px;height:13px}
.ef-item .dot{width:8px;height:8px;border-radius:50%;flex-shrink:0}
.ef-item span{white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.ef-cat-hdr{font-size:9px;text-transform:uppercase;letter-spacing:.6px;color:var(--txt2);padding:8px 12px 3px;font-weight:500}
.cat-row{display:flex;align-items:center;gap:8px;padding:3px 0;font-size:11px;color:var(--txt)}
.cat-dot{width:10px;height:10px;border-radius:50%;flex-shrink:0}
.cat-name{flex:1;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.cat-cnt{font-family:'JetBrains Mono',monospace;font-size:10px;color:var(--txt2);min-width:20px;text-align:right}
#ni{border-top:1px solid var(--bdr);padding:14px 20px;display:none;max-height:260px;overflow-y:auto}
#ni::-webkit-scrollbar{width:3px}#ni::-webkit-scrollbar-thumb{background:var(--bdr);border-radius:2px}
#ni h3{font-size:13px;font-weight:700;color:#e8eaf0;margin-bottom:6px;word-break:break-all}
.ir{display:flex;justify-content:space-between;font-size:11px;padding:2px 0;border-bottom:1px solid rgba(255,255,255,.03)}
.ir .k{color:var(--txt2)}.ir .vl{font-family:'JetBrains Mono',monospace;color:var(--acc);font-size:11px}
.tth{font-size:10px;text-transform:uppercase;letter-spacing:.4px;color:var(--txt2);margin:8px 0 4px}
.tb{display:flex;align-items:center;gap:6px;font-size:10px;margin-bottom:3px}
.tb .tn{width:110px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;color:var(--txt)}
.tb .bw{flex:1;height:5px;background:var(--bg);border-radius:3px;overflow:hidden}
.tb .bf{height:100%;border-radius:3px}
.tb .tp{font-family:'JetBrains Mono',monospace;font-size:9px;color:var(--acc);min-width:36px;text-align:right}
#cw{flex:1;position:relative;overflow:hidden}
canvas{display:block;width:100%;height:100%}
#tt{position:absolute;pointer-events:none;background:var(--bg2);border:1px solid var(--bdr);border-radius:7px;padding:8px 12px;font-size:11px;box-shadow:0 6px 24px rgba(0,0,0,.6);z-index:20;display:none;max-width:240px}
#tt .t1{font-weight:700;font-size:12px;color:#e8eaf0;margin-bottom:3px}
#tt .t2{font-family:'JetBrains Mono',monospace;font-size:10px;color:var(--txt2);line-height:1.5}
#topbar{position:absolute;top:10px;right:10px;display:flex;gap:5px;z-index:15}
.tbtn{background:var(--bg2);border:1px solid var(--bdr);color:var(--txt2);width:32px;height:32px;border-radius:7px;display:flex;align-items:center;justify-content:center;cursor:pointer;font-size:14px;transition:all .15s}
.tbtn:hover{background:var(--bg3);color:#eee;border-color:var(--acc)}
</style>
</head>
<body>
<div id="app">
<div id="sb">
<div class="sh"><h1>Event Flow Graph</h1><p id="subtitle">force-directed atlas</p></div>
<div id="ctrls">
<div class="sg">
<div class="sc"><div class="n" id="sn">—</div><div class="l">Visible Nodes</div></div>
<div class="sc"><div class="n" id="se">—</div><div class="l">Visible Edges</div></div>
<div class="sc"><div class="n" id="st">—</div><div class="l">Total Events</div></div>
<div class="sc"><div class="n" id="ss">—</div><div class="l">Transitions</div></div>
</div>
<div class="cg"><label>Min Transition Probability <span class="v" id="vp">1.0%</span></label>
<input type="range" id="rp" min="0" max="30" step="0.5" value="1"></div>
<div class="cg"><label>Min Transition Count <span class="v" id="vc">10</span></label>
<input type="range" id="rc" min="1" max="500" step="1" value="10"></div>
<div class="cg"><label>Top N Edges <span class="v" id="vm">250</span></label>
<input type="range" id="rm" min="20" max="3000" step="10" value="250"></div>
<div class="cg"><label>Gravity <span class="v" id="vg">0.015</span></label>
<input type="range" id="rg" min="1" max="80" step="1" value="15"></div>
<div class="cg"><label>Repulsion <span class="v" id="vr">-6000</span></label>
<input type="range" id="rr" min="-15000" max="-200" step="100" value="-6000"></div>
<div class="cg"><label>Link Distance <span class="v" id="vld">400</span></label>
<input type="range" id="rld" min="50" max="1200" step="10" value="400"></div>
<div class="cg"><label>Self-Loops</label>
<div class="br"><button class="sb" id="blo">Hide</button><button class="sb a" id="bly">Show</button></div></div>
<div class="cg"><label>Selection Shows</label>
<div class="br"><button class="sb" id="bd-out">Outgoing</button><button class="sb" id="bd-in">Incoming</button><button class="sb a" id="bd-both">Both</button></div></div>
<div class="cg"><label>Edge Style</label>
<p style="font-size:10px;color:var(--txt2);margin-top:2px;line-height:1.4">Thickness &amp; color scale with transition count</p></div>
<div class="cg"><label>Filter Events <span class="v" id="ve-count"></span></label>
<div class="ef-wrap">
<button class="ef-toggle" id="ef-btn">All events selected ▾</button>
<div class="ef-dd" id="ef-dd">
<div class="ef-actions">
<button class="ef-abtn" id="ef-selall">Select All</button>
<button class="ef-abtn" id="ef-selnone">Deselect All</button>
<button class="ef-abtn" id="ef-selinv">Invert</button>
</div>
<input class="ef-search" id="ef-search" placeholder="Filter list…">
<div id="ef-list"></div>
</div>
</div>
</div>
<div class="cg"><label>Visible Events <span class="v" id="ve-legend-count"></span></label>
<div id="cat-legend" style="max-height:200px;overflow-y:auto;scrollbar-width:thin;scrollbar-color:var(--bdr) transparent"></div>
</div>
</div>
<div id="ni">
<h3 id="nn"></h3>
<div class="ir"><span class="k">Events</span><span class="vl" id="nc"></span></div>
<div class="ir"><span class="k">Degree</span><span class="vl" id="nd"></span></div>
<div class="ir"><span class="k">Out edges</span><span class="vl" id="no"></span></div>
<div class="ir"><span class="k">In edges</span><span class="vl" id="nin"></span></div>
<div class="tth" id="nt-title">Top Outgoing →</div>
<div id="nt"></div>
</div>
</div>
<div id="cw">
<div id="topbar">
<button class="tbtn" id="btn-reset" title="Reset view">⌂</button>
<button class="tbtn" id="btn-reheat" title="Reheat simulation">↻</button>
</div>
<div id="tt"><div class="t1"></div><div class="t2"></div></div>
<canvas id="cv"></canvas>
</div>
</div>
<script>
'''

    after = r'''
const NI=D.ni, ND=D.nd, ED=D.e;
const NN=NI.length;
let selfLoops=true, selNode=-1, edgeDir='both';

const nx=new Float64Array(NN), ny=new Float64Array(NN);
const nvx=new Float64Array(NN), nvy=new Float64Array(NN);
const nrad=new Float64Array(NN);
let ndrag=-1;
const evVisible=new Uint8Array(NN).fill(1);

// Per-event colors via golden-angle hue spacing
function hslToRgb(h,s,l){s/=100;l/=100;const k=n=>(n+h/30)%12;const a=s*Math.min(l,1-l);const f=n=>l-a*Math.max(-1,Math.min(k(n)-3,9-k(n),1));return[Math.round(f(0)*255),Math.round(f(8)*255),Math.round(f(4)*255)]}
const ncolRgb=[], ncolHex=[];
for(let i=0;i<NN;i++){const hue=(i*137.508)%360;const sat=58+12*Math.sin(i*0.7);const lit=58+8*Math.cos(i*1.1);const[r,g,b]=hslToRgb(hue,sat,lit);ncolRgb.push([r,g,b]);ncolHex.push('#'+((1<<24)|(r<<16)|(g<<8)|b).toString(16).slice(1))}
function evColor(i){return ncolHex[i]}
function evRgb(i){return ncolRgb[i]}

for(let i=0;i<NN;i++){const a=(i/NN)*Math.PI*2+(Math.random()-0.5)*0.5;const r=500+Math.random()*800;nx[i]=Math.cos(a)*r;ny[i]=Math.sin(a)*r}

const cv=document.getElementById('cv');
const ctx=cv.getContext('2d');
let W,H;
function resize(){const cw=document.getElementById('cw');W=cw.clientWidth;H=cw.clientHeight;cv.width=W*devicePixelRatio;cv.height=H*devicePixelRatio;cv.style.width=W+'px';cv.style.height=H+'px';ctx.setTransform(devicePixelRatio,0,0,devicePixelRatio,0,0)}
resize();window.addEventListener('resize',resize);

let camX=0,camY=0,camZ=0.35;
function s2w(sx,sy){return[(sx-W/2)/camZ+camX,(sy-H/2)/camZ+camY]}
function w2s(wx,wy){return[(wx-camX)*camZ+W/2,(wy-camY)*camZ+H/2]}
function resetView(){camX=0;camY=0;camZ=0.35}

let fEdges=[],fNodeSet=new Set();
function filterData(){
  const mp=parseFloat(document.getElementById('rp').value)/100;
  const mc=parseInt(document.getElementById('rc').value);
  const mx=parseInt(document.getElementById('rm').value);
  let edges=[];
  for(let i=0;i<ED.length;i++){const e=ED[i];if(!selfLoops&&e[0]===e[1])continue;if(!evVisible[e[0]]||!evVisible[e[1]])continue;if(e[3]>=mp&&e[2]>=mc)edges.push(e)}
  edges.sort((a,b)=>b[2]-a[2]);if(edges.length>mx)edges=edges.slice(0,mx);
  fNodeSet=new Set();edges.forEach(e=>{fNodeSet.add(e[0]);fNodeSet.add(e[1])});fEdges=edges;
  if(fNodeSet.size>0){const degs=Array.from(fNodeSet).map(i=>ND[i][1]);const maxD=Math.max(...degs),minD=Math.min(...degs);for(let i=0;i<NN;i++){if(fNodeSet.has(i)){const f=maxD>minD?(ND[i][1]-minD)/(maxD-minD):0.5;nrad[i]=5+f*26}else nrad[i]=0}}
  document.getElementById('sn').textContent=fNodeSet.size;document.getElementById('se').textContent=fEdges.length;
  document.getElementById('st').textContent=Math.round(ND.reduce((a,n)=>a+n[0],0)/1000)+'K';
  document.getElementById('ss').textContent=Math.round(ED.reduce((a,e)=>a+e[2],0)/1000)+'K';
}

let alpha=1;
function simTick(){
  const grav=parseFloat(document.getElementById('rg').value)/1000;
  const rep=parseFloat(document.getElementById('rr').value);
  const linkDist=parseFloat(document.getElementById('rld').value);
  const linkStr=0.02,damp=0.55;
  const nodeArr=Array.from(fNodeSet);const N=nodeArr.length;if(N===0)return;
  for(const i of nodeArr){nvx[i]-=nx[i]*grav*alpha;nvy[i]-=ny[i]*grav*alpha}
  for(let a=0;a<N;a++){const i=nodeArr[a];for(let b=a+1;b<N;b++){const j=nodeArr[b];let dx=nx[j]-nx[i],dy=ny[j]-ny[i];let d2=dx*dx+dy*dy;if(d2<100)d2=100;const d=Math.sqrt(d2);const f=rep*alpha/d2;const fx=(dx/d)*f,fy=(dy/d)*f;nvx[i]-=fx;nvy[i]-=fy;nvx[j]+=fx;nvy[j]+=fy}}
  for(const e of fEdges){const s=e[0],t=e[1];if(s===t)continue;let dx=nx[t]-nx[s],dy=ny[t]-ny[s];const d=Math.sqrt(dx*dx+dy*dy)||1;const f=(d-linkDist)*linkStr*alpha;const fx=(dx/d)*f,fy=(dy/d)*f;nvx[s]+=fx;nvy[s]+=fy;nvx[t]-=fx;nvy[t]-=fy}
  for(const i of nodeArr){if(i===ndrag){nvx[i]=0;nvy[i]=0;continue}nvx[i]*=damp;nvy[i]*=damp;nx[i]+=nvx[i];ny[i]+=nvy[i]}
  const padding=14;
  for(let iter=0;iter<4;iter++){for(let a=0;a<N;a++){const i=nodeArr[a];const ri=nrad[i];if(ri<=0)continue;for(let b=a+1;b<N;b++){const j=nodeArr[b];const rj=nrad[j];if(rj<=0)continue;let dx=nx[j]-nx[i],dy=ny[j]-ny[i];const d=Math.sqrt(dx*dx+dy*dy)||0.01;const minDist=ri+rj+padding;if(d<minDist){const overlap=(minDist-d)*0.5;const ux=dx/d,uy=dy/d;if(i===ndrag){nx[j]+=ux*overlap*2;ny[j]+=uy*overlap*2}else if(j===ndrag){nx[i]-=ux*overlap*2;ny[i]-=uy*overlap*2}else{nx[i]-=ux*overlap;ny[i]-=uy*overlap;nx[j]+=ux*overlap;ny[j]+=uy*overlap}}}}}
  alpha*=0.997;if(alpha<0.001)alpha=0.001;
}
function reheat(){alpha=1}

// ── DRAWING ──
function draw(){
  ctx.clearRect(0,0,W,H);ctx.save();ctx.translate(W/2,H/2);ctx.scale(camZ,camZ);ctx.translate(-camX,-camY);
  if(fEdges.length===0&&fNodeSet.size===0){ctx.restore();ctx.fillStyle='#555';ctx.font='14px "DM Sans"';ctx.textAlign='center';ctx.fillText('No data matches current filters.',W/2,H/2);return}
  const maxC=fEdges.length?Math.max(...fEdges.map(e=>e[2])):1;
  const maxP=fEdges.length?Math.max(...fEdges.map(e=>e[3])):0.01;
  const connSet=new Set();
  if(selNode>=0){connSet.add(selNode);for(const e of fEdges){if(edgeDir==='out'||edgeDir==='both'){if(e[0]===selNode)connSet.add(e[1])}if(edgeDir==='in'||edgeDir==='both'){if(e[1]===selNode)connSet.add(e[0])}}}
  const logMax=Math.log(maxC+1);const logMin=Math.log((fEdges.length?Math.min(...fEdges.map(e=>e[2])):1)+1);const logRange=logMax-logMin||1;
  for(const e of fEdges){
    const si=e[0],ti=e[1],cnt=e[2];const frac=Math.max(0,Math.min(1,(Math.log(cnt+1)-logMin)/logRange));
    let r,g,b;if(frac<0.33){const t=frac/0.33;r=Math.round(42+(45-42)*t);g=Math.round(58+(158-58)*t);b=Math.round(78+(143-78)*t)}else if(frac<0.66){const t=(frac-0.33)/0.33;r=Math.round(45+(224-45)*t);g=Math.round(158+(167-158)*t);b=Math.round(143+(64-143)*t)}else{const t=(frac-0.66)/0.34;r=Math.round(224+(239-224)*t);g=Math.round(167+(83-167)*t);b=Math.round(64+(80-64)*t)}
    let lw=0.6+frac*5.4;let op=0.12+frac*0.6;
    let edgeActive=false;if(selNode>=0){if(edgeDir==='out'||edgeDir==='both')edgeActive=edgeActive||(si===selNode);if(edgeDir==='in'||edgeDir==='both')edgeActive=edgeActive||(ti===selNode)}
    if(selNode>=0&&!edgeActive){op*=0.08;lw*=0.4}
    if(selNode>=0&&edgeActive){op=Math.max(op,0.8);lw=Math.max(lw,2)}
    ctx.strokeStyle=`rgba(${r},${g},${b},${op})`;ctx.lineWidth=lw;ctx.beginPath();
    if(si===ti){const loopR=nrad[si]+14;ctx.arc(nx[si],ny[si]-loopR,loopR,0.3*Math.PI,0.7*Math.PI);ctx.stroke()}
    else{const dx=nx[ti]-nx[si],dy=ny[ti]-ny[si];const d=Math.sqrt(dx*dx+dy*dy)||1;const tR=nrad[ti]+6;const ex=nx[ti]-(dx/d)*tR,ey=ny[ti]-(dy/d)*tR;const sx_=nx[si]+(dx/d)*nrad[si],sy_=ny[si]+(dy/d)*nrad[si];const cpx=(sx_+ex)/2+dy*0.07,cpy=(sy_+ey)/2-dx*0.07;ctx.moveTo(sx_,sy_);ctx.quadraticCurveTo(cpx,cpy,ex,ey);ctx.stroke();
    const at=0.93;const tax=2*(1-at)*(cpx-sx_)+2*at*(ex-cpx);const tay=2*(1-at)*(cpy-sy_)+2*at*(ey-cpy);const td=Math.sqrt(tax*tax+tay*tay)||1;const ux=tax/td,uy=tay/td;const as=3+lw*2;
    ctx.fillStyle=`rgba(${r},${g},${b},${Math.min(1,op*1.6)})`;ctx.beginPath();ctx.moveTo(ex,ey);ctx.lineTo(ex-ux*as-uy*as*.45,ey-uy*as+ux*as*.45);ctx.lineTo(ex-ux*as+uy*as*.45,ey-uy*as-ux*as*.45);ctx.closePath();ctx.fill()}}
  for(const i of fNodeSet){const r=nrad[i];if(r<=0)continue;const col=evColor(i);const rgb=evRgb(i);const dimmed=selNode>=0&&!connSet.has(i);if(i===selNode){ctx.shadowColor=col;ctx.shadowBlur=25*camZ}ctx.beginPath();ctx.arc(nx[i],ny[i],r,0,Math.PI*2);ctx.fillStyle=dimmed?'rgba(25,30,45,0.5)':col;ctx.fill();ctx.strokeStyle=dimmed?'rgba(60,65,80,0.3)':'rgba(255,255,255,0.5)';ctx.lineWidth=dimmed?0.5:1.5;ctx.stroke();ctx.shadowBlur=0;
  if(!dimmed){const fs=Math.max(7,Math.min(11,r*0.45));ctx.font=`500 ${fs}px 'JetBrains Mono',monospace`;ctx.fillStyle='rgba(220,225,235,0.9)';ctx.textAlign='center';ctx.textBaseline='top';let lbl=NI[i];if(lbl.length>22)lbl=lbl.slice(0,20)+'…';ctx.fillText(lbl,nx[i],ny[i]+r+5)}}
  ctx.restore();updateCatLegend();
  if(fEdges.length>0){const elW=160,elH=52,elPad=10,elX=W-elW-10,elY=H-elH-10;ctx.fillStyle='rgba(16,19,24,0.85)';ctx.strokeStyle='rgba(36,42,56,0.8)';ctx.lineWidth=1;roundRect(ctx,elX,elY,elW,elH,6);ctx.fill();ctx.stroke();ctx.fillStyle='#888';ctx.font="500 9px 'DM Sans',sans-serif";ctx.textAlign='left';ctx.textBaseline='top';ctx.fillText('EDGE = TRANSITION COUNT',elX+elPad,elY+7);const barX=elX+elPad,barY=elY+22,barW=elW-elPad*2,barH=6;for(let px=0;px<barW;px++){const f=px/barW;let cr,cg,cb;if(f<0.33){const t=f/0.33;cr=42+(45-42)*t;cg=58+(158-58)*t;cb=78+(143-78)*t}else if(f<0.66){const t=(f-0.33)/0.33;cr=45+(224-45)*t;cg=158+(167-158)*t;cb=143+(64-143)*t}else{const t=(f-0.66)/0.34;cr=224+(239-224)*t;cg=167+(83-167)*t;cb=64+(80-64)*t}ctx.fillStyle=`rgb(${Math.round(cr)},${Math.round(cg)},${Math.round(cb)})`;ctx.fillRect(barX+px,barY,1,barH)}const minC=Math.min(...fEdges.map(e=>e[2]));ctx.fillStyle='#999';ctx.font="10px 'JetBrains Mono',monospace";ctx.textAlign='left';ctx.textBaseline='top';ctx.fillText(String(minC),barX,barY+barH+3);ctx.textAlign='right';ctx.fillText(String(maxC),barX+barW,barY+barH+3)}
}
function roundRect(ctx,x,y,w,h,r){ctx.beginPath();ctx.moveTo(x+r,y);ctx.lineTo(x+w-r,y);ctx.quadraticCurveTo(x+w,y,x+w,y+r);ctx.lineTo(x+w,y+h-r);ctx.quadraticCurveTo(x+w,y+h,x+w-r,y+h);ctx.lineTo(x+r,y+h);ctx.quadraticCurveTo(x,y+h,x,y+h-r);ctx.lineTo(x,y+r);ctx.quadraticCurveTo(x,y,x+r,y);ctx.closePath()}

// ── INTERACTION ──
let isPan=false,panSX=0,panSY=0,hoverNode=-1,hoverEdge=null;
cv.addEventListener('wheel',e=>{e.preventDefault();const[wx,wy]=s2w(e.offsetX,e.offsetY);const f=e.deltaY>0?0.92:1.08;camZ=Math.min(8,Math.max(0.02,camZ*f));camX=wx-(e.offsetX-W/2)/camZ;camY=wy-(e.offsetY-H/2)/camZ},{passive:false});
cv.addEventListener('mousedown',e=>{const[wx,wy]=s2w(e.offsetX,e.offsetY);let hit=-1;for(const i of fNodeSet){const dx=wx-nx[i],dy=wy-ny[i];if(dx*dx+dy*dy<nrad[i]*nrad[i]*1.8){hit=i;break}}if(hit>=0){ndrag=hit;cv.style.cursor='grabbing'}else{isPan=true;panSX=e.clientX;panSY=e.clientY;cv.style.cursor='grabbing'}});
window.addEventListener('mousemove',e=>{
  if(ndrag>=0){const rect=cv.getBoundingClientRect();const[wx,wy]=s2w(e.clientX-rect.left,e.clientY-rect.top);nx[ndrag]=wx;ny[ndrag]=wy;nvx[ndrag]=0;nvy[ndrag]=0;return}
  if(isPan){const dx=(e.clientX-panSX)/camZ,dy=(e.clientY-panSY)/camZ;camX-=dx;camY-=dy;panSX=e.clientX;panSY=e.clientY;return}
  const rect=cv.getBoundingClientRect();const mx=e.clientX-rect.left,my=e.clientY-rect.top;
  if(mx<0||my<0||mx>W||my>H){document.getElementById('tt').style.display='none';return}
  const[wx,wy]=s2w(mx,my);
  let hitNode=-1;for(const i of fNodeSet){const dx=wx-nx[i],dy=wy-ny[i];if(dx*dx+dy*dy<nrad[i]*nrad[i]*1.5){hitNode=i;break}}
  if(hitNode>=0){hoverNode=hitNode;hoverEdge=null;const tt=document.getElementById('tt');tt.querySelector('.t1').textContent=NI[hitNode];tt.querySelector('.t2').innerHTML='Events: '+ND[hitNode][0].toLocaleString()+'<br>Degree: '+ND[hitNode][1].toLocaleString();tt.style.display='block';tt.style.left=(mx+14)+'px';tt.style.top=(my+14)+'px';cv.style.cursor='pointer';return}
  let hitEdge=null;const hitThresh=8/camZ;
  for(const ed of fEdges){const si=ed[0],ti=ed[1];if(si===ti)continue;const rdS=nrad[si],rdT=nrad[ti];const dxe=nx[ti]-nx[si],dye=ny[ti]-ny[si];const de=Math.sqrt(dxe*dxe+dye*dye)||1;const sx_=nx[si]+(dxe/de)*rdS,sy_=ny[si]+(dye/de)*rdS;const tR=rdT+6;const ex=nx[ti]-(dxe/de)*tR,ey=ny[ti]-(dye/de)*tR;const cpx=(sx_+ex)/2+dye*0.07,cpy=(sy_+ey)/2-dxe*0.07;let minD=Infinity;for(let t=0;t<=1;t+=0.1){const bx=(1-t)*(1-t)*sx_+2*(1-t)*t*cpx+t*t*ex;const by=(1-t)*(1-t)*sy_+2*(1-t)*t*cpy+t*t*ey;const dd=Math.sqrt((wx-bx)*(wx-bx)+(wy-by)*(wy-by));if(dd<minD)minD=dd}if(minD<hitThresh){hitEdge=ed;break}}
  if(hitEdge){hoverNode=-1;hoverEdge=hitEdge;const tt=document.getElementById('tt');tt.querySelector('.t1').textContent=NI[hitEdge[0]]+' → '+NI[hitEdge[1]];tt.querySelector('.t2').innerHTML='Count: '+hitEdge[2].toLocaleString()+'<br>Probability: '+(hitEdge[3]*100).toFixed(2)+'%';tt.style.display='block';tt.style.left=(mx+14)+'px';tt.style.top=(my+14)+'px';cv.style.cursor='pointer'}
  else{hoverNode=-1;hoverEdge=null;document.getElementById('tt').style.display='none';cv.style.cursor='default'}
});
window.addEventListener('mouseup',()=>{ndrag=-1;isPan=false;cv.style.cursor='default'});
cv.addEventListener('click',e=>{const[wx,wy]=s2w(e.offsetX,e.offsetY);let hit=-1;for(const i of fNodeSet){const dx=wx-nx[i],dy=wy-ny[i];if(dx*dx+dy*dy<nrad[i]*nrad[i]*1.8){hit=i;break}}if(hit>=0){selNode=hit;showNodeInfo(hit)}else{selNode=-1;document.getElementById('ni').style.display='none'}});

function showNodeInfo(i){
  document.getElementById('ni').style.display='block';document.getElementById('nn').textContent=NI[i];document.getElementById('nc').textContent=ND[i][0].toLocaleString();document.getElementById('nd').textContent=ND[i][1].toLocaleString();
  const outE=fEdges.filter(e=>e[0]===i&&e[0]!==e[1]);const inE=fEdges.filter(e=>e[1]===i&&e[0]!==e[1]);
  document.getElementById('no').textContent=outE.length;document.getElementById('nin').textContent=inE.length;
  const titleEl=document.getElementById('nt-title');let showEdges=[];
  if(edgeDir==='out'){titleEl.textContent='Top Outgoing →';showEdges=outE.sort((a,b)=>b[3]-a[3]).slice(0,10)}
  else if(edgeDir==='in'){titleEl.textContent='← Top Incoming';showEdges=inE.sort((a,b)=>b[2]-a[2]).slice(0,10)}
  else{titleEl.textContent='Top Outgoing → / ← Incoming';showEdges=outE.sort((a,b)=>b[3]-a[3]).slice(0,6);showEdges.push(null);showEdges=showEdges.concat(inE.sort((a,b)=>b[2]-a[2]).slice(0,6))}
  const nt=document.getElementById('nt');nt.innerHTML='';
  for(const e of showEdges){if(e===null){nt.innerHTML+='<div style="border-top:1px solid rgba(255,255,255,0.06);margin:6px 0;font-size:9px;color:#6d7690;padding-top:4px">← Incoming</div>';continue}
  const isOut=e[0]===i;const otherIdx=isOut?e[1]:e[0];const pct=(e[3]*100).toFixed(1);const col=evColor(otherIdx);const label=NI[otherIdx];
  nt.innerHTML+=`<div class="tb"><span class="tn" title="${label}">${label}</span><span class="bw"><span class="bf" style="width:${Math.min(100,e[3]/0.12*100)}%;background:${col}"></span></span><span class="tp">${pct}%</span></div>`}
}

// ── CONTROLS ──
function SL(v){selfLoops=v;document.getElementById('bly').className='sb'+(v?' a':'');document.getElementById('blo').className='sb'+(v?'':' a');rebuild()}
function setDir(d){edgeDir=d;document.getElementById('bd-out').className='sb'+(d==='out'?' a':'');document.getElementById('bd-in').className='sb'+(d==='in'?' a':'');document.getElementById('bd-both').className='sb'+(d==='both'?' a':'');if(selNode>=0)showNodeInfo(selNode)}
function updateLabels(){document.getElementById('vp').textContent=(parseFloat(document.getElementById('rp').value)).toFixed(1)+'%';document.getElementById('vc').textContent=document.getElementById('rc').value;document.getElementById('vm').textContent=document.getElementById('rm').value;document.getElementById('vg').textContent=(parseFloat(document.getElementById('rg').value)/1000).toFixed(3);document.getElementById('vr').textContent=document.getElementById('rr').value;document.getElementById('vld').textContent=document.getElementById('rld').value}
let rto=null;
['rp','rc','rm','rld'].forEach(id=>{document.getElementById(id).addEventListener('input',()=>{updateLabels();clearTimeout(rto);rto=setTimeout(rebuild,200)})});
['rg','rr'].forEach(id=>{document.getElementById(id).addEventListener('input',()=>{updateLabels();alpha=Math.max(alpha,0.5)})});
function rebuild(){filterData();alpha=1}

// ── EVENT FILTER ──
let ddOpen=false;
function toggleDD(){ddOpen=!ddOpen;document.getElementById('ef-dd').classList.toggle('open',ddOpen);if(ddOpen)buildEventList()}
document.addEventListener('click',e=>{if(ddOpen&&!e.target.closest('.ef-wrap')){ddOpen=false;document.getElementById('ef-dd').classList.remove('open')}});
function buildEventList(){const list=document.getElementById('ef-list');list.innerHTML='';const sorted=Array.from({length:NN},(_,i)=>i).sort((a,b)=>NI[a].localeCompare(NI[b]));for(const i of sorted){const item=document.createElement('label');item.className='ef-item';item.dataset.idx=String(i);item.dataset.name=NI[i].toLowerCase();const cb=document.createElement('input');cb.type='checkbox';cb.checked=!!evVisible[i];cb.addEventListener('change',function(){evToggle(i,this.checked)});item.appendChild(cb);const dot=document.createElement('span');dot.className='dot';dot.style.background=evColor(i);item.appendChild(dot);const sp=document.createElement('span');sp.textContent=NI[i];item.appendChild(sp);list.appendChild(item)}}
function filterEventList(){const q=document.getElementById('ef-search').value.toLowerCase();document.querySelectorAll('#ef-list .ef-item').forEach(el=>{el.style.display=el.dataset.name.includes(q)?'':'none'})}
function evToggle(i,checked){evVisible[i]=checked?1:0;updateEvCount();clearTimeout(rto);rto=setTimeout(rebuild,200)}
function evSelectAll(){for(let i=0;i<NN;i++)evVisible[i]=1;document.querySelectorAll('#ef-list input[type=checkbox]').forEach(cb=>cb.checked=true);updateEvCount();rebuild()}
function evSelectNone(){for(let i=0;i<NN;i++)evVisible[i]=0;document.querySelectorAll('#ef-list input[type=checkbox]').forEach(cb=>cb.checked=false);updateEvCount();rebuild()}
function evInvert(){for(let i=0;i<NN;i++)evVisible[i]=evVisible[i]?0:1;document.querySelectorAll('#ef-list input[type=checkbox]').forEach(cb=>cb.checked=!cb.checked);updateEvCount();rebuild()}
function updateEvCount(){const vis=evVisible.reduce((a,v)=>a+v,0);document.getElementById('ve-count').textContent=vis+' / '+NN;document.getElementById('ef-btn').textContent=vis===NN?'All events selected':vis===0?'No events selected':vis+' of '+NN+' events'}

let lastLegendKey='';
function updateCatLegend(){const visArr=Array.from(fNodeSet).sort((a,b)=>a-b);const key=visArr.join(',');if(key===lastLegendKey)return;lastLegendKey=key;const el=document.getElementById('cat-legend');el.innerHTML='';const countEl=document.getElementById('ve-legend-count');if(countEl)countEl.textContent=fNodeSet.size+' nodes';const sorted=Array.from({length:NN},(_,i)=>i).sort((a,b)=>NI[a].localeCompare(NI[b]));for(const i of sorted){if(!fNodeSet.has(i))continue;const row=document.createElement('div');row.className='cat-row';row.innerHTML='<span class="cat-dot" style="background:'+evColor(i)+'"></span><span class="cat-name" title="'+NI[i]+'">'+NI[i]+'</span>';el.appendChild(row)}}

// ── BIND LISTENERS ──
document.getElementById('blo').addEventListener('click',()=>SL(false));
document.getElementById('bly').addEventListener('click',()=>SL(true));
document.getElementById('bd-out').addEventListener('click',()=>setDir('out'));
document.getElementById('bd-in').addEventListener('click',()=>setDir('in'));
document.getElementById('bd-both').addEventListener('click',()=>setDir('both'));
document.getElementById('ef-btn').addEventListener('click',()=>toggleDD());
document.getElementById('ef-selall').addEventListener('click',()=>evSelectAll());
document.getElementById('ef-selnone').addEventListener('click',()=>evSelectNone());
document.getElementById('ef-selinv').addEventListener('click',()=>evInvert());
document.getElementById('ef-search').addEventListener('input',()=>filterEventList());
document.getElementById('btn-reset').addEventListener('click',()=>resetView());
document.getElementById('btn-reheat').addEventListener('click',()=>reheat());

// ── MAIN LOOP ──
function loop(){for(let i=0;i<3;i++)simTick();draw();requestAnimationFrame(loop)}
filterData();updateLabels();updateEvCount();updateCatLegend();resetView();
document.getElementById('subtitle').textContent='force-directed atlas · '+Math.round(ND.reduce((a,n)=>a+n[0],0)/1000)+'K events';
loop();
</script>
</body>
</html>'''

    return before, after


def generate_event_flow(
    df,
    user_col="UserID",
    session_col="SessionID",
    time_col="TimeStamp",
    event_col="Event",
    output_path="event_flow.html",
):
    """
    Generate an interactive event flow HTML visualization from a DataFrame.

    Parameters
    ----------
    df : pandas.DataFrame
        Input DataFrame with event stream data.
    user_col : str
        Column name for user identifier.
    session_col : str
        Column name for session identifier.
    time_col : str
        Column name for timestamp (used for ordering within sessions).
    event_col : str
        Column name for event names.
    output_path : str
        File path for the output HTML file.

    Returns
    -------
    str
        Absolute path to the generated HTML file.
    """
    # Validate columns exist
    for col_name, col_val in [
        ("user_col", user_col),
        ("session_col", session_col),
        ("time_col", time_col),
        ("event_col", event_col),
    ]:
        if col_val not in df.columns:
            raise ValueError(
                f"Column '{col_val}' ({col_name}) not found in DataFrame. "
                f"Available columns: {list(df.columns)}"
            )

    print(f"Processing {len(df):,} rows...")

    # Compute transitions
    node_ids, node_data, edge_data, stats = _compute_transitions(
        df, user_col, session_col, time_col, event_col
    )

    print(f"  → {stats['unique_events']} unique events (nodes)")
    print(f"  → {stats['total_edges']:,} unique transitions (edges)")
    print(f"  → {stats['total_transitions']:,} total transitions")

    # Build compact JSON payload
    data = {
        "ni": node_ids,
        "nd": node_data,
        "e": edge_data,
    }
    data_json = json.dumps(data, separators=(",", ":"))
    print(f"  → Data payload: {len(data_json) / 1024:.0f} KB")

    # Assemble HTML
    before, after = _get_html_template()
    html = before + "const D=" + data_json + ";\n" + after

    # Write output
    output_path = os.path.abspath(output_path)
    with open(output_path, "w", encoding="utf-8") as f:
        f.write(html)

    size_kb = os.path.getsize(output_path) / 1024
    print(f"\n✅ Generated: {output_path} ({size_kb:.0f} KB)")
    print(f"   Open this file in your browser to interact with the graph.")

    return output_path
