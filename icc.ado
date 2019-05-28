program define icc

	version 9

	* get the value of the random intercept in exponentiated format

	quietly: _diparm lns1_1_1, exp
	
	* save the result to a local macro

	local intercept = r(est)
	
	* get the value of the and error term in exponentiated format

	quietly: _diparm lnsig_e, exp
	
	* save the result to a local macro

	local error = r(est)
	
	* calculate the icc

	local icc = (`intercept'^2) / ((`intercept'^2) + (`error'^2))
	
	* display the results
	
	display as text "Intraclass Correlation Coefficient (for a model with a single nesting)"
	
	display as text "{hline 59}"

	display as text "icc:  " as result `icc'

end

