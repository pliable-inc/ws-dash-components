# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class ApexChart(Component):
    """An ApexChart component.
Wrapper for react-apexcharts library. For API and
examples see:

https://github.com/apexcharts/react-apexcharts

Keyword arguments:

- id (string; optional):
    The ID used to identify this component in Dash callbacks.

- height (string | number; default 'auto'):
    Possible values for height can be 100%, 300px or 300 (by default
    is auto).

- options (dict; required):
    The configuration object, see options on API (Reference).

- series (list; required):
    The series is a set of data. To know more about the format of the
    data, checkout Series docs on the website.

- type (string; default 'line'):
    line, area, bar, pie, donut, scatter, bubble, heatmap, radialBar.

- width (string | number; default '100%'):
    Possible values for width can be 100%, 400px or 400 (by default is
    100%)."""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'ws_dash_components'
    _type = 'ApexChart'
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, type=Component.UNDEFINED, width=Component.UNDEFINED, height=Component.UNDEFINED, series=Component.REQUIRED, options=Component.REQUIRED, **kwargs):
        self._prop_names = ['id', 'height', 'options', 'series', 'type', 'width']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'height', 'options', 'series', 'type', 'width']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args}

        for k in ['options', 'series']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')

        super(ApexChart, self).__init__(**args)
