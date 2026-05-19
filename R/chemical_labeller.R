#' Labeller for Facet Strip Text
#'
#' @param variable New facet strip text from list
#' @param value Old facet strip text
#'
#' @returns Renamed axis text
#' @export 
#'
#' @examples
#' facet_grid(vars(column_name), labeller=chemical_labeller)
chemical_labeller <- function(variable,value){
  return(chemical_names[value])
}