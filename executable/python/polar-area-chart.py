import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('test-runner', '9h29fe3l0x')

trace1 = Area(
    r=[77.5, 72.5, 70.0, 45.0, 22.5, 42.5, 40.0, 62.5],
    t=['North', 'N-E', 'East', 'S-E', 'South', 'S-W', 'West', 'N-W'],
    name='11-14 m/s',
    marker=Marker(
        color='rgb(106,81,163)'
    )
)
trace2 = Area(
    r=[57.49999999999999, 50.0, 45.0, 35.0, 20.0, 22.5, 37.5, 55.00000000000001],
    t=['North', 'N-E', 'East', 'S-E', 'South', 'S-W', 'West', 'N-W'],
    name='8-11 m/s',
    marker=Marker(
        color='rgb(158,154,200)'
    )
)
trace3 = Area(
    r=[40.0, 30.0, 30.0, 35.0, 7.5, 7.5, 32.5, 40.0],
    t=['North', 'N-E', 'East', 'S-E', 'South', 'S-W', 'West', 'N-W'],
    name='5-8 m/s',
    marker=Marker(
        color='rgb(203,201,226)'
    )
)
trace4 = Area(
    r=[20.0, 7.5, 15.0, 22.5, 2.5, 2.5, 12.5, 22.5],
    t=['North', 'N-E', 'East', 'S-E', 'South', 'S-W', 'West', 'N-W'],
    name='< 5 m/s',
    marker=Marker(
        color='rgb(242,240,247)'
    )
)
data = Data([trace1, trace2, trace3, trace4])
layout = Layout(
    title='Wind Speed Distribution in Laurel, NE',
    legend=Legend(
        font=Font(
            size=16
        )
    ),
    font=Font(
        size=16
    ),
    orientation=270,
    radialaxis=RadialAxis(
        ticksuffix='%'
    )
)
fig = Figure(data=data, layout=layout)

plot_url = py.plot(fig, filename='polar-area-chart')