# AUTO GENERATED FILE - DO NOT EDIT

#' @export
apexChart <- function(id=NULL, height=NULL, options=NULL, series=NULL, type=NULL, width=NULL) {
    
    props <- list(id=id, height=height, options=options, series=series, type=type, width=width)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ApexChart',
        namespace = 'ws_dash_components',
        propNames = c('id', 'height', 'options', 'series', 'type', 'width'),
        package = 'wsDashComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
