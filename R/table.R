# AUTO GENERATED FILE - DO NOT EDIT

#' @export
table <- function(columns=NULL, enableColumnSelection=NULL, enableRangeSelection=NULL, enableRowSelection=NULL, rows=NULL) {
    
    props <- list(columns=columns, enableColumnSelection=enableColumnSelection, enableRangeSelection=enableRangeSelection, enableRowSelection=enableRowSelection, rows=rows)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Table',
        namespace = 'ws_dash_components',
        propNames = c('columns', 'enableColumnSelection', 'enableRangeSelection', 'enableRowSelection', 'rows'),
        package = 'wsDashComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
