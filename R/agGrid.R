# AUTO GENERATED FILE - DO NOT EDIT

#' @export
agGrid <- function(id=NULL, columnDefs=NULL, gridApi=NULL, rowData=NULL, selectedRows=NULL) {
    
    props <- list(id=id, columnDefs=columnDefs, gridApi=gridApi, rowData=rowData, selectedRows=selectedRows)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'AgGrid',
        namespace = 'ws_dash_components',
        propNames = c('id', 'columnDefs', 'gridApi', 'rowData', 'selectedRows'),
        package = 'wsDashComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
