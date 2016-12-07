*use "/Users/yeabinmoon/Dropbox/Last/Data/DisIncome/Data/2.refine_First.dta", clear
use "/Users/yeabinmoon/Dropbox/Last/Data/DisIncome/Data/2.refine_Second.dta", clear
rename year Year
gen year = Year - 1
gen ageHD = AgeHD - 1
replace ageHD = 0 if AgeHD == 0
gen ageWF = AgeWF - 1
replace ageWF = 0 if AgeWF ==0


* Current state variable is recorded from FIPS. To calculate disposable income 
* need to transform 

gen state = .
replace state = 1 if CurState == 1
replace state = 2 if CurState == 2
replace state = 3 if CurState == 4
replace state = 4 if CurState == 5
replace state = 5 if CurState == 6
replace state = 6 if CurState == 8
replace state = 7 if CurState == 9
replace state = 8 if CurState == 10
replace state = 9 if CurState == 11
replace state = 10 if CurState == 12
replace state = 11 if CurState == 13
replace state = 12 if CurState == 15
replace state = 13 if CurState == 16
replace state = 14 if CurState == 17
replace state = 15 if CurState == 18
replace state = 16 if CurState == 19
replace state = 17 if CurState == 20
replace state = 18 if CurState == 21
replace state = 19 if CurState == 22
replace state = 20 if CurState == 23
replace state = 21 if CurState == 24
replace state = 22 if CurState == 25
replace state = 23 if CurState == 26
replace state = 24 if CurState == 27
replace state = 25 if CurState == 28
replace state = 26 if CurState == 29
replace state = 27 if CurState == 30
replace state = 28 if CurState == 31
replace state = 29 if CurState == 32
replace state = 30 if CurState == 33
replace state = 31 if CurState == 34
replace state = 32 if CurState == 35
replace state = 33 if CurState == 36
replace state = 34 if CurState == 37
replace state = 35 if CurState == 38
replace state = 36 if CurState == 39
replace state = 37 if CurState == 40
replace state = 38 if CurState == 41
replace state = 39 if CurState == 42
replace state = 40 if CurState == 44
replace state = 41 if CurState == 45
replace state = 42 if CurState == 46
replace state = 43 if CurState == 47
replace state = 44 if CurState == 48
replace state = 45 if CurState == 49
replace state = 46 if CurState == 50
replace state = 47 if CurState == 51
replace state = 48 if CurState == 53
replace state = 49 if CurState == 54
replace state = 50 if CurState == 55
replace state = 51 if CurState == 56

gen mstat = .
replace mstat = 1 if Marital == 0
replace mstat = 2 if WageWF > 0 & Marital ==1
replace mstat = 3 if WageWF == 0 & Marital ==1

gen depx = .
replace depx = NumChild 

*gen agex = AgeHD * 100 + AgeWF 
*replace agex = AgeHD * 100 if AgeWF == .


gen agex = 0
replace agex = 1 if ageHD >= 65 & ageWF <  65
replace agex = 1 if ageHD < 65  & ageWF >= 65
replace agex = 2 if ageHD >= 65 & ageWF >= 65



gen pwages = LaborIncHD
gen swages = LaborIncWF
gen dividends = DividHD 
gen otherprop = RentIncHD+InterestHD+TrustHD+AlimonyHD

gen pensions =  VaPensHD+RetireHD+AnnuitHD+OthPensHD
gen gssi = SSIHD
gen transfers = AdcTanfHD+OthWelfareHD+WorkCompHD+ChildSupHD
gen rentpaid = RentPay
gen proptax = PropTax
gen otheritem = DedMed 
gen childcare = ChildCare
gen ui = UnempCompHD
gen mortgage = MortPay + Charit + TotSup
gen stcg = Lumpsum + Inherit


taxsim9, replace

gen Liability = fiitax + siitax + fica 
gen DispLabIncHD = LaborIncHD - Liability
gen DispTotIncHD = TotIncHD   - Liability

*summ Liability TotFamInc TotIncHD LaborIncHD 
*order TotFamInc TotIncHD LaborIncHD DispLabIncHD DispTotIncHD Liability
*sort Liability

drop year ageHD ageWF mstat depx agex pwages swages dividends pensions otherprop transfers gssi rentpaid proptax otheritem childcare ui mortgage stcg PropTax RentPay MortPay ChildCare

rename Year year
*save "/Users/yeabinmoon/Dropbox/Last/Data/DisIncome/Data/3.TAXSIM_First.dta", replace
save "/Users/yeabinmoon/Dropbox/Last/Data/DisIncome/Data/3.TAXSIM_Second.dta", replace
