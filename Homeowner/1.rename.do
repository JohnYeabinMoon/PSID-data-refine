use "/Users/yeabinmoon/Dropbox/Last/Data/HomeInfo/Data/0.J219581.dta", clear

rename ER30001  id1968
rename ER30002  pernum

gen pid=(id1968*1000) + pernum

drop ER25001 ER30000 ER36001 ER42001 ER47301

rename ER33801 IndvId2005
rename ER33901 IndvId2007
rename ER34001 IndvId2009
rename ER34101 IndvId2011

rename	ER33802	Sequence2005
rename	ER33902	Sequence2007
rename	ER34002	Sequence2009
rename	ER34102	Sequence2011

rename	ER33803	RelToHD2005
rename	ER33903	RelToHD2007
rename	ER34003	RelToHD2009
rename	ER34103	RelToHD2011

rename ER25027 NumRooms2005
rename ER36027 NumRooms2007
rename ER42028 NumRooms2009
rename ER47328 NumRooms2011

rename ER25046 MortIntWholF2005
rename ER36046 MortIntWholF2007
rename ER42047 MortIntWholF2009
rename ER47355 MortIntWholF2011

rename ER25047 MortIntDeciF2005
rename ER36047 MortIntDeciF2007
rename ER42048 MortIntDeciF2009
rename ER47356 MortIntDeciF2011

rename ER25048 MortOriYearF2005
rename ER36049 MortOriYearF2007
rename ER42050 MortOriYearF2009
rename ER47357 MortOriYearF2011

rename ER25049 MortRemYearF2005
rename ER36050 MortRemYearF2007
rename ER42051 MortRemYearF2009
rename ER47358 MortRemYearF2011


rename ER25057 MortIntWholS2005
rename ER36058 MortIntWholS2007
rename ER42066 MortIntWholS2009
rename ER47376 MortIntWholS2011

rename ER25058 MortIntDeciS2005
rename ER36059 MortIntDeciS2007
rename ER42067 MortIntDeciS2009
rename ER47377 MortIntDeciS2011

rename ER25059 MortOriYearS2005
rename ER36061 MortOriYearS2007
rename ER42069 MortOriYearS2009
rename ER47378 MortOriYearS2011

rename ER25060 MortRemYearS2005
rename ER36062 MortRemYearS2007
rename ER42070 MortRemYearS2009
rename ER47379 MortRemYearS2011

drop IndvId* Sequence* id1968 pernum

save "/Users/yeabinmoon/Dropbox/Last/Data/HomeInfo/Data/1.rename.dta", replace

