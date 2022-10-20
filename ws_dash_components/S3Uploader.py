# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class S3Uploader(Component):
    """A S3Uploader component.


Keyword arguments:

- id (string; optional):
    The ID used to identify this component in Dash callbacks.

- files (dict with strings as keys and values of type dict; optional):
    The files being uploaded.

- label (string; default 'Drop files here or %{browse}'):
    A label that will be printed when this component is rendered.

- maxUploads (default 5)

- parallelUploads (default 5):
    Limit the amount of uploads going on at the same time. This is
    passed through to XHRUpload;  Set to 0 to disable limiting.

- schema_id (string; optional)"""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'ws_dash_components'
    _type = 'S3Uploader'
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, label=Component.UNDEFINED, schema_id=Component.UNDEFINED, files=Component.UNDEFINED, parallelUploads=Component.UNDEFINED, maxUploads=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'files', 'label', 'maxUploads', 'parallelUploads', 'schema_id']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'files', 'label', 'maxUploads', 'parallelUploads', 'schema_id']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args}

        super(S3Uploader, self).__init__(**args)
