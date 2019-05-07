program rtodi
	version 11
	args r

	local d = 2*`r'/((1-`r'^2)^.5)

	display as text "r:  " as result `r'
	display as text "Cohen's d:  " as result `d'

                
end
