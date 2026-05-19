#' Moving Average Function
#' Calculate the moving average for a data point given a window size. 
#' 
#' @param focal_date A scalar corresponding to the target date.
#' @param dates A vector column corresponding to all dates in your table.
#' @param conc A vector column corresponding to all nutrient concentrations in your table. 
#' @param win_size_wks A scalar corresponding to the window size. 
#'
#' @returns A scalar corresponding to the rolling average of a specific data point. For example, the rolling average for a chemical concentration of one sample date. 
#' @export
#'
#' @examples
#' moving_average(focal_date = as.Date("1990-04-05"),
#' dates = tiny_problem$dates, 
#' conc = tiny_problem$ca,
#' win_size_wks = 9)
#' 
moving_average <- function(focal_date, dates, conc, win_size_wks) {
  # Which dates are in the window?
  is_in_window <- (dates > focal_date - (win_size_wks/2) * 7) & 
    (dates < focal_date + (win_size_wks / 2) * 7)
  # Find the associated concentrations
  window_conc <- conc[is_in_window]
  # Calculate the mean 
  result <- mean(window_conc, na.rm = TRUE)
  
  return(result)
}