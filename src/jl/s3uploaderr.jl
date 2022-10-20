# AUTO GENERATED FILE - DO NOT EDIT

export s3uploaderr

"""
    s3uploaderr(;kwargs...)

A S3Uploaderr component.

Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `files` (Dict with Strings as keys and values of type Dict; optional): The files being uploaded.
- `label` (String; optional): A label that will be printed when this component is rendered.
- `maxUploads` (optional)
- `parallelUploads` (optional): Limit the amount of uploads going on at the same time. This is passed through to XHRUpload; 
Set to 0 to disable limiting.
- `schema_id` (String; optional)
"""
function s3uploaderr(; kwargs...)
        available_props = Symbol[:id, :files, :label, :maxUploads, :parallelUploads, :schema_id]
        wild_props = Symbol[]
        return Component("s3uploaderr", "S3Uploaderr", "ws_dash_components", available_props, wild_props; kwargs...)
end

