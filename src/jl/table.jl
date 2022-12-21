# AUTO GENERATED FILE - DO NOT EDIT

export table

"""
    table(;kwargs...)

A Table component.

Keyword arguments:
- `columns` (Array; optional)
- `enableColumnSelection` (Bool; optional)
- `enableRangeSelection` (Bool; optional)
- `enableRowSelection` (Bool; optional)
- `rows` (Array; optional)
"""
function table(; kwargs...)
        available_props = Symbol[:columns, :enableColumnSelection, :enableRangeSelection, :enableRowSelection, :rows]
        wild_props = Symbol[]
        return Component("table", "Table", "ws_dash_components", available_props, wild_props; kwargs...)
end

