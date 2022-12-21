# AUTO GENERATED FILE - DO NOT EDIT

export apexchart

"""
    apexchart(;kwargs...)

An ApexChart component.
Wrapper for react-apexcharts library. For API and
examples see:

https://github.com/apexcharts/react-apexcharts
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `height` (String | Real; optional): Possible values for height can be 100%, 300px or 300 (by default is auto)
- `options` (Dict; required): The configuration object, see options on API (Reference)
- `series` (Array; required): The series is a set of data. To know more about the format of
the data, checkout Series docs on the website.
- `type` (String; optional): line, area, bar, pie, donut, scatter, bubble, heatmap, radialBar
- `width` (String | Real; optional): Possible values for width can be 100%, 400px or 400 (by default is 100%)
"""
function apexchart(; kwargs...)
        available_props = Symbol[:id, :height, :options, :series, :type, :width]
        wild_props = Symbol[]
        return Component("apexchart", "ApexChart", "ws_dash_components", available_props, wild_props; kwargs...)
end

