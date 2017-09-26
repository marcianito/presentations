#' @title test
#'
#' @description test
#'
#' @param test test
#' 
#' @return test
#' 
#' @details missing
#' @references Marvin Reich (2017), mreich@@posteo.de
#' @examples missing

plotsums = function(a = 2, b = 3
){
    res_sums = sums(a, b)
    library(ggplot2)
    res_plot = ggplot(res_sums, aes(x = factor(c(a,b)), y = res_sums)) + 
        geom_point() + 
        ylab("sum") + xlab("input")
    return(res_plot)
}

