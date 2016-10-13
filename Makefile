#Variables
IN = data/Advertising.csv 
SCRIPTS = code/scripts/

# phony targets
.PHONY: data tests eda regression report session clean all

# all
all: eda regression report

#download the Advertising.csv
data: 
	curl -O "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"
	mv Advertising.csv data

#executes the code in eda-script.R	
eda: code/scripts/eda-script.R data/Advertising.csv
	cd code/scripts; Rscript eda-script.R
	
#executes the code in regression-script.R
regression: code/scripts/regression-script.R data/Advertising.csv
	cd code/scripts; Rscript regression-script.R
	
#generate report.pdf
report: report/report.Rmd data/correlation-matrix.RData data/regression.RData
	cd report; Rscript -e '.libPaths(c("C:/Users/vlfgn/Documents/R/win-library/3.3", "C:/Users/vlfgn/Documents/R/win-library/3.3")); library(rmarkdown); render("report.Rmd")'
	
#run the unit tests on test-regression.R
test: code/test-that.R code/tests/test-regression.R
	cd code; Rscript test-that.R
	
#executes the code in session-info-script.R
session: code/scripts/session-info-script.R
	cd code/scripts; Rscript session-info-script.R
	
#clean output file
clean:
	rm -f report/report.pdf 

