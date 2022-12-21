# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Table(Component):
    """A Table component.


Keyword arguments:

- columns (list; optional)

- enableColumnSelection (boolean; optional)

- enableRangeSelection (boolean; optional)

- enableRowSelection (boolean; optional)

- rows (list; optional)"""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'ws_dash_components'
    _type = 'Table'
    @_explicitize_args
    def __init__(self, rows=Component.UNDEFINED, columns=Component.UNDEFINED, enableRangeSelection=Component.UNDEFINED, enableRowSelection=Component.UNDEFINED, enableColumnSelection=Component.UNDEFINED, **kwargs):
        self._prop_names = ['columns', 'enableColumnSelection', 'enableRangeSelection', 'enableRowSelection', 'rows']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['columns', 'enableColumnSelection', 'enableRangeSelection', 'enableRowSelection', 'rows']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args}

        super(Table, self).__init__(**args)
