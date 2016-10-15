#Stat159-fall2016-hw03
***

This repository contains the Homework3 for the fall 2016, Statistics 159 at UC Berkeley.

This homework is about reproducing the results of Explanatory Data Analysis using multiple regression anaylsis on TV, Radio, Newspaper and Sales.

In this repository, there are 4 directories: data, code, images, report

1. 'data' contains Advertising.csv, eda-output.txt, regression.RData, correlation-matrix.RData with its own README.md explaining 'data' structure in more details.

2. 'code' contains 3-sub directories: functions, scripts, tests with its own README.md explaining 'code' structure in more details and one test-that.R script.

3. 'images' contains 11 png files which are produced by either eda-script.R or regression-script.R

	- Plots produced by eda-script.R  
		histogram-sales.png, histogram-tv.png, histogram-radio.png, histogram-newspaper.png, scatterplot-matrix.png


	```
		#generating plots from eda-cript.R
		make eda
	```

	- Plots produced by regression-script.R  
		scatterplot-tv-sales.png, scatterplot-radio-sales.png, scatterplot-newspaper-sales.png, residual-plot.png, scale-location-plot.png, normal-qq-plot.png   
	```
		#generating plots from regression-script.R
		make regression
	```  
	

4. 'report' contains report.Rmd generating report.pdf.
	```
		#generating report.pdf from report.Rmd
		make report
	```

	

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />All media content (e.g. paper/report, and images) licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

All code licensed under MIT License

Author: PhilHoon Oh

