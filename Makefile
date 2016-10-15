#Variables
AD = data/Advertising.csv 
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
eda: $(SCRIPTS)/eda-script.R $(AD)
	cd $(SCRIPTS); Rscript $(<F)

#executes the code in regression-script.R
regression: $(SCRIPTS)/regression-script.R $(AD)
	cd $(SCRIPTS); Rscript $(<F)
	
#generate report.pdf
report: report/report.Rmd data/correlation-matrix.RData data/regression.RData
	cd report; Rscript -e '.libPaths(c("C:/Users/vlfgn/Documents/R/win-library/3.3", "C:/Users/vlfgn/Documents/R/win-library/3.3")); library(rmarkdown); render("report.Rmd")'
	
#run the unit tests on test-regression.R
tests: code/test-that.R code/tests/test-regression.R
	cd code; Rscript $(<F)
	
#executes the code in session-info-script.R
session: $(SCRIPTS)/session-info-script.R
	cd $(SCRIPTS); Rscript $(<F)
	
#clean output file
clean:
	rm -f report/report.pdf 

