use "/Users/yeabinmoon/Dropbox/Last/Data/HomeInfo/Data/1.rename.dta", clear

reshape long NumRooms MortIntWholF MortIntDeciF MortOriYearF MortRemYearF MortIntWholS MortIntDeciS MortOriYearS MortRemYearS RelToHD, i(pid) j(year)

replace NumRooms = 0 if (NumRooms == 98 | NumRooms == 99)
replace MortIntWholF = 0 if (MortIntWholF == 98 | MortIntWholF == 99)
replace MortIntDeciF = 0 if (MortIntDeciF == 998 | MortIntDeciF == 999)
replace MortOriYearF = 0 if (MortOriYearF == 9998 | MortOriYearF == 9999)
replace MortRemYearF = 0 if (MortRemYearF == 98 | MortRemYearF == 99)

replace MortIntWholS = 0 if (MortIntWholS == 98 | MortIntWholS == 99)
replace MortIntDeciS = 0 if (MortIntDeciS == 998 | MortIntDeciS == 999)
replace MortOriYearS = 0 if (MortOriYearS == 9998 | MortOriYearS == 9999)
replace MortRemYearS = 0 if (MortRemYearS == 98 | MortRemYearS == 99)

replace MortIntDeciF = MortIntDeciF / 10 if MortIntDeciF < 10
replace MortIntDeciF = MortIntDeciF / 100 if MortIntDeciF > 9 & MortIntDeciF < 100
replace MortIntDeciF = MortIntDeciF / 1000 if MortIntDeciF > 99

replace MortIntDeciS = MortIntDeciS / 10 if MortIntDeciS < 10
replace MortIntDeciS = MortIntDeciS / 100 if MortIntDeciS > 9 & MortIntDeciS < 100
replace MortIntDeciS = MortIntDeciS / 1000 if MortIntDeciS > 99

gen MortInterestF = MortIntWholF + MortIntDeciF
replace MortInterestF = MortIntWholF if MortIntDeciF == .
gen MortInterestS = MortIntWholS + MortIntDeciS
replace MortInterestS = MortIntWholS if MortIntDeciS == .

drop MortIntWholF MortIntWholS MortIntDeciF MortIntDeciS

gen MortOriYear = min(MortOriYearF, MortOriYearS)
replace MortOriYear = MortOriYearF if (MortOriYearS == 0 | MortOriYearS == .)
replace MortOriYear = MortOriYearS if (MortOriYearF == 0 | MortOriYearF == .)

gen MortRemYear = max(MortRemYearF, MortRemYearS)

save "/Users/yeabinmoon/Dropbox/Last/Data/HomeInfo/Data/2.refine_Second.dta", replace
