# AUTO GENERATED FILE - DO NOT EDIT

#' @export
s3Upload <- function(id=NULL, label=NULL, value=NULL) {
    
    props <- list(id=id, label=label, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'S3Upload',
        namespace = 'ws_dash_components',
        propNames = c('id', 'label', 'value'),
        package = 'wsDashComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
