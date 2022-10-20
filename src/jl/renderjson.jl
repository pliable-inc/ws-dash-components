# AUTO GENERATED FILE - DO NOT EDIT

export renderjson

"""
    renderjson(;kwargs...)

A RenderJson component.

Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `data` (Dict; optional): The value displayed in the input.
- `invert_theme` (Bool; optional)
- `max_depth` (Real; optional): Dash-assigned callback that should be called to report property changes
to Dash, to make them available for callbacks.
- `theme` (Dict; optional)
"""
function renderjson(; kwargs...)
        available_props = Symbol[:id, :data, :invert_theme, :max_depth, :theme]
        wild_props = Symbol[]
        return Component("renderjson", "RenderJson", "ws_dash_components", available_props, wild_props; kwargs...)
end

