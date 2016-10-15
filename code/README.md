Code
***

There are 3-sub directories in Code: functions, scripts, tests and one R script, test-that.R which is used to run the unit test on the regression-functions.R via test-regression.R.

1. Inside the functions, there is a regression-functions.R used to caculate indices of multiple regression($R^2$, F-statistics, Residual Sum of Errors)


2. Inside the scripts, there are eda-script.R, regression-script.R and session-info-script.R.
	
	
	eda-script produces plots, eda-output.txt, correlation-matrix.RData.
	```
		#excuting eda-script.R
		make eda
	```
	
	
	regression-script.R produces plots, regression.RData
	```
		#excuting regression-script.R
		make regression
	```
	
	
	session-info-script.R produces session-info.txt
	```
		#excuting session-info-script.R
		make session
	
	```


3. Inside the tests, there is a test-regression.R, the unit test Rscript on regression-functions.R using mt-car data set. Unlike previous scripts, it will be executed indirectly via test-that.R on its parent directory.

	test-regression.R is executed by running the test-that.R 
	```
		#excuting unit test on regression-function.R 
		#excuting test-regression.R via excuting test-that.R
		make test
	
	```

4. test-that.R executes the unit test on regression-functions.R via test-regression.R. Here, test-regression.R is the only Rscript in functions. It might seem redundant; however, if there are multiple functions to be test, then test-that.R is useful.  


Author : Phil Hoon, Oh


