# AUTO GENERATED FILE - DO NOT EDIT

export s3upload

"""
    s3upload(;kwargs...)

A S3Upload component.

Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `files` (Dict with Strings as keys and values of type Dict; optional): The files being uploaded.
- `label` (String; optional): A label that will be printed when this component is rendered.
- `schema_id` (String; required)
"""
function s3upload(; kwargs...)
        available_props = Symbol[:id, :files, :label, :schema_id]
        wild_props = Symbol[]
        return Component("s3upload", "S3Upload", "ws_dash_components", available_props, wild_props; kwargs...)
end

