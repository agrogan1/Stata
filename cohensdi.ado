program cohensdi
	
	version 11
	
	args n1 m1 sd1 n2 m2 sd2

	local pooledsd = ((((`n1'-1)*(`sd1'^2)) + ((`n2'-1)*(`sd2'^2)))/(`n1'+`n2'-2))^.5 
	
	local d = (`m1'-`m2')/`pooledsd'
	
	local total_n = `n1' + `n2'
	
	local se_d = (`total_n'/(`n1'*`n2') + (`d'^2)/(2*(`total_n' -2)))^.5

	display as text "{hline 59}"

	display as text "Calculation of Cohen's d from pre-calculated values for"
	display as text "sample size, mean and standard deviations for two groups"
	display as text "{hline 59}"

	display as text "sample size of group 1:  " as result `n1'
	display as text "mean of group 1:  " as result `m1'
	display as text "standard deviation of group1:  " as result `sd1'
	display as text "sample size of group 2:  " as result `n2'
	display as text "mean of group 2:  " as result `m2'
	display as text "standard deviation of group 2:  " as result `sd2'
	display as text "pooled standard deviation:  " as result `pooledsd'

	
	display as text "{hline 59}"
	
	display as text "Cohen's d:  " as result `d'
	display as text "standard error of d:  " as result `se_d'

                
end
