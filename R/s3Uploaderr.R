# AUTO GENERATED FILE - DO NOT EDIT

#' @export
s3Uploaderr <- function(id=NULL, files=NULL, label=NULL, maxUploads=NULL, parallelUploads=NULL, schema_id=NULL) {
    
    props <- list(id=id, files=files, label=label, maxUploads=maxUploads, parallelUploads=parallelUploads, schema_id=schema_id)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'S3Uploaderr',
        namespace = 'ws_dash_components',
        propNames = c('id', 'files', 'label', 'maxUploads', 'parallelUploads', 'schema_id'),
        package = 'wsDashComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
