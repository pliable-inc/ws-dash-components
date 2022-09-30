# AUTO GENERATED FILE - DO NOT EDIT

export s3upload

"""
    s3upload(;kwargs...)

A S3Upload component.

Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `label` (String; required): A label that will be printed when this component is rendered.
- `value` (String; optional): The value displayed in the input.
"""
function s3upload(; kwargs...)
        available_props = Symbol[:id, :label, :value]
        wild_props = Symbol[]
        return Component("s3upload", "S3Upload", "ws_dash_components", available_props, wild_props; kwargs...)
end

