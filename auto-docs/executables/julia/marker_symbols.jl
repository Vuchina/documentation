using Plotly

using Plotly
Plotly.signin("TestBot", "r1neazxo9w")

data = [
  [
    "x" => [1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, 4, 5, 6, 7, 8, 9], 
    "y" => [1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5], 
    "mode" => "markers", 
    "text" => ["marker number: 0<br>marker string: 'circle'", "marker number: 1<br>marker string: 'square'", "marker number: 2<br>marker string: 'diamond'", "marker number: 3<br>marker string: 'cross'", "marker number: 4<br>marker string: 'x'", "marker number: 5<br>marker string: 'triangle-up'", "marker number: 6<br>marker string: 'triangle-down'", "marker number: 7<br>marker string: 'triangle-left'", "marker number: 8<br>marker string: 'triangle-right'", "marker number: 9<br>marker string: 'triangle-ne'", "marker number: 10<br>marker string: 'triangle-se'", "marker number: 11<br>marker string: 'triangle-sw'", "marker number: 12<br>marker string: 'triangle-nw'", "marker number: 13<br>marker string: 'pentagon'", "marker number: 14<br>marker string: 'hexagon'", "marker number: 15<br>marker string: 'hexagon2'", "marker number: 16<br>marker string: 'octagon'", "marker number: 17<br>marker string: 'star'", "marker number: 18<br>marker string: 'hexagram'", "marker number: 19<br>marker string: 'star-triangle-up'", "marker number: 20<br>marker string: 'star-triangle-down'", "marker number: 21<br>marker string: 'star-square'", "marker number: 22<br>marker string: 'star-diamond'", "marker number: 23<br>marker string: 'diamond-tall'", "marker number: 24<br>marker string: 'diamond-wide'", "marker number: 25<br>marker string: 'hourglass'", "marker number: 26<br>marker string: 'bowtie'", "marker number: 27<br>marker string: 'circle-cross'", "marker number: 28<br>marker string: 'circle-x'", "marker number: 29<br>marker string: 'square-cross'", "marker number: 30<br>marker string: 'square-x'", "marker number: 31<br>marker string: 'diamond-cross'", "marker number: 32<br>marker string: 'diamond-x'", "marker number: 33<br>marker string: 'cross-thin'", "marker number: 34<br>marker string: 'x-thin'", "marker number: 35<br>marker string: 'asterisk'", "marker number: 36<br>marker string: 'hash'", "marker number: 37<br>marker string: 'y-up'", "marker number: 38<br>marker string: 'y-down'", "marker number: 39<br>marker string: 'y-left'", "marker number: 40<br>marker string: 'y-right'", "marker number: 41<br>marker string: 'line-ew'", "marker number: 42<br>marker string: 'line-ns'", "marker number: 43<br>marker string: 'line-ne'", "marker number: 44<br>marker string: 'line-nw'"], 
    "marker" => [
      "color" => "blue", 
      "size" => 20, 
      "symbol" => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44], 
      "line" => [
        "color" => "orange", 
        "width" => 1.5
      ]
    ], 
    "type" => "scatter"
  ]
]
layout = [
  "showlegend" => false, 
  "autosize" => false, 
  "width" => 500, 
  "height" => 500, 
  "xaxis" => [
    "showgrid" => false, 
    "zeroline" => false, 
    "showline" => false, 
    "showticklabels" => false
  ], 
  "yaxis" => [
    "showgrid" => false, 
    "zeroline" => false, 
    "showline" => false, 
    "showticklabels" => false
  ], 
  "annotations" => [
    [
      "x" => 0.5, 
      "y" => 1, 
      "xref" => "paper", 
      "yref" => "paper", 
      "text" => "Add 100 (or '-open') to marker number (or string) to remove the fill color,<br>Add 200 (or '-dot') to marker number (or string) to add a dot in the middle,<br>Add 300 (or '-open-dot', 'dot-open') to marker number (or string) for both.", 
      "font" => ["size" => 10], 
      "align" => "left", 
      "showarrow" => false, 
      "xanchor" => "center", 
      "yanchor" => "bottom"
    ]
  ], 
  "hovermode" => "closest"
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "marker-symbols", "fileopt" => "overwrite", "auto_open" => "false"])
plot_url = response["url"]