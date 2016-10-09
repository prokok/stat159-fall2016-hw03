.libPaths(c("C:/Users/vlfgn/Documents/R/win-library/3.3", "C:/Users/vlfgn/Documents/R/win-library/3.3"))
library(xtable)

sink(file = "../../session-Info.txt")
cat("-Session Info-\n\n")
sessionInfo()
sink()
