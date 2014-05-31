var plotly = require('plotly')('test-runner', '9h29fe3l0x')

var trace0 = {
  x: [1, 2, 3], 
  y: [4, 5, 6], 
  type: "scatter"
};
var trace1 = {
  x: [20, 30, 40], 
  y: [50, 60, 70], 
  xaxis: "x2", 
  yaxis: "y2", 
  type: "scatter"
};
var data = [trace1, trace2];
var layout = {
  xaxis: {domain: [0, 0.45]}, 
  yaxis2: {anchor: "x2"}, 
  xaxis2: {domain: [0.55, 1]}
};

plot_url = plotly.plot(data, layout, function (err, msg) {
    console.log(msg);
});