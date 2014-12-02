
var trace1 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  y: [0, 3, 6, 4, 5, 2, 3, 5, 4], 
  type: "scatter"
};
var trace2 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  y: [0, 4, 7, 8, 3, 6, 3, 3, 4], 
  type: "scatter"
};
var data = [trace1, trace2];
var layout = {legend: {
    x: 0, 
    y: 1, 
    traceorder: "normal", 
    font: {
      family: "sans-serif", 
      size: 12, 
      color: "#000"
    }, 
    bgcolor: "#E2E2E2", 
    bordercolor: "#FFFFFF", 
    borderwidth: 2
  }};
Plotly.plot(divid, data, layout);