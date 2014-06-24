using Plotly

using Plotly
Plotly.signin("TestBot", "r1neazxo9w")

trace1 = [
  "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  "y" => [0, 1, 3, 2, 4, 3, 4, 6, 5], 
  "type" => "scatter"
]
trace2 = [
  "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  "y" => [0, 4, 5, 1, 2, 2, 3, 4, 2], 
  "type" => "scatter"
]
data = [trace1, trace2]
layout = [
  "showlegend" => false, 
  "annotations" => [
    [
      "x" => 2, 
      "y" => 5, 
      "xref" => "x", 
      "yref" => "y", 
      "text" => "max=5", 
      "font" => [
        "family" => "Courier New, monospace", 
        "size" => 16, 
        "color" => "#ffffff"
      ], 
      "align" => "center", 
      "showarrow" => true, 
      "arrowhead" => 2, 
      "arrowsize" => 1, 
      "arrowwidth" => 2, 
      "arrowcolor" => "#636363", 
      "ax" => 20, 
      "ay" => -30, 
      "bordercolor" => "#c7c7c7", 
      "borderwidth" => 2, 
      "borderpad" => 4, 
      "bgcolor" => "#ff7f0e", 
      "opacity" => 0.8
    ]
  ]
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "style-annotation", "fileopt" => "overwrite", "auto_open" => "false"])
plot_url = response["url"]