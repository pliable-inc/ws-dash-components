# AUTO GENERATED FILE - DO NOT EDIT

#' @export
renderJson <- function(id=NULL, data=NULL, invert_theme=NULL, max_depth=NULL, theme=NULL) {
    
    props <- list(id=id, data=data, invert_theme=invert_theme, max_depth=max_depth, theme=theme)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'RenderJson',
        namespace = 'ws_dash_components',
        propNames = c('id', 'data', 'invert_theme', 'max_depth', 'theme'),
        package = 'wsDashComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
