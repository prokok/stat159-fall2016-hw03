#This function calculates RSS. Input is lm object. Output is RSS(numeric).
residual_sum_squares = function(x) {
  return(sum(x$residuals^2))   
}


#This function calculates TSS. Input is lm object. Output is TSS(numeric).
total_sum_squares = function(x) {
  return(sum((x$model$sales-mean(x$model$sales))^2))  
}

#This function calculates R-squared. Input is lm object. Output is R-squared(numeric).
r_squared = function(x) {
  r_sq = (1 - (residual_sum_squares(x)/total_sum_squares(x)))
  return(r_sq)
}

#This function calculates F-statistics. Input is lm object. Output is F-statistics(numeric).
f_statistic = function(x){
  p = as.numeric(length(x$model)[1]-1)
  df_residual = x$df.residual
  f = ((total_sum_squares(x)-residual_sum_squares(x))/p)/(residual_sum_squares(x)/(df_residual))
  return(f)
}

#This function caculates residual standard error. Input is lm object. Output is RSS(numeric).
residual_std_error = function(x){
  df_residual = x$df.residual
  rse = sqrt(residual_sum_squares(x)/df_residual)
  return(rse)
}


