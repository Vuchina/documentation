var plotly = require('plotly')('TestBot', 'r1neazxo9w')

var unpack = require('ndarray-unpack');
var zeros = require('zeros');
var fill = require('ndarray-fill');

var size = 50;
var z = unpack(fill(zeros([size, size]), function(c,r) {
  return r+c;
}));

{}

var graph_options = {filename: "custom-colorscale", fileopt: "overwrite", auto_open: "false"}
plotly.plot(data, graph_options, function (err, msg) {
    console.log(msg);
});