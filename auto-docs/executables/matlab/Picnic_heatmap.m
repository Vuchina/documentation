signin('TestBot', 'r1neazxo9w')

size = 50;
z = zeros(size, size);
for r = 1:size
    for c = 1:size
        z(r,c) = r+c
    end
end

data = {...
  struct(...
    'z', z, ...
    'scl', 'Picnic', ...
    'type', 'heatmap')...
};
layout = struct('title', 'Picnic');

response = plotly(data, struct('layout', layout, 'filename', 'Picnic-heatmap', 'fileopt', 'overwrite', 'auto_open', 'false'));
plot_url = response.url