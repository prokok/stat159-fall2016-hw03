# phony targets
.PHONY: data tests eda regression report clean all

# all
all: eda regression report

#download the Advertising.csv
data: 
	curl -O "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"
	mv Advertising.csv data

#executes the code in eda-script.R	
eda: 
	cd code/scripts; Rscript eda-script.R
	
#executes the code in regression-script.R
regression: 
	cd code/scripts; Rscript regression-script.R
	
#generate report.pdf
report:
	cd report; Rscript -e '.libPaths(c("C:/Users/vlfgn/Documents/R/win-library/3.3", "C:/Users/vlfgn/Documents/R/win-library/3.3")); library(rmarkdown); render("report.Rmd")'
	
#run the unit tests on test-regression.R
test:
	cd code; Rscript test-that.R
	
#clean output file
clean:
	rm -f report/report.pdf 

