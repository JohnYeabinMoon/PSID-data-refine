use "/Users/yeabinmoon/Dropbox/Last/Data/DisIncome/Data/1.rename.dta", clear

* The second way to deal with missing values is to treat them as zero
* We can save more observations

reshape long AdcTanfHD AgeHD AgeWF AlimonyHD AnnuitHD AnythinHD BonusHD Charit ChildCare ChildSupHD CommHD CurState DedMed DividHD DividWF GardenHD HelpFrOtrHD HelpFrRelaHD ImpLabIncHD ImpLabIncWF Inherit InterestHD InterestWF Lumpsum Marital MortPayF MortPayS NumChild OthLabIHD OthPensHD OthWelfareHD OthWelfareWF OvtimeHD ProcticeHD PropTax RelToHD RentIncHD RentIncWF RentPay RetireHD RoomerHD SSIHD SSIWF TipHD TotSup TrustHD TrustWF UnempCompHD VaPensHD WageHD WageWF WorkCompHD XtraLabHD YoungChild, i(pid) j(year) 


*** Demograpic variables (because of disposable income)**************************
replace CurState = . if (CurState == 99 | CurState == 0)
replace AgeHD = . if AgeHD == 999
replace AgeWF = . if AgeWF == 999
* NumChild has no missing values 
replace YoungChild = . if (YoungChild == 999)
replace Marital = . if (Marital == 8 | Marital == 9)
* Marital = 1: Married
* Marital = 0: Not Married
replace Marital = 0 if (Marital == 2 | Marital == 3 | Marital == 4 | Marital == 5)

*********************************************************************************




*** Expenditure******************************************************************  
replace PropTax = 0 if (PropTax == 99998 | PropTax == 99999)
replace MortPayF = 0 if (MortPayF == 99998 | MortPayF == 99999)
replace MortPayS = 0 if (MortPayS == 99998 | MortPayS == 99999)
replace MortPayF = MortPayF * 12
replace MortPayS = MortPayS * 12
gen MortPay = MortPayF + MortPayS
drop MortPayF MortPayS
replace RentPay = 0 if (RentPay == 99998 | RentPay == 99999)
replace RentPay = RentPay * 12
replace ChildCare = 0 if (ChildCare == 999998 | ChildCare == 999999)
replace Charit = 0 if (Charit == 999998 | Charit == 999999)
replace DedMed = 0 if (DedMed == 999998 | DedMed == 999999)
replace TotSup = 0 if (TotSup == 9999998 | TotSup == 9999999)
*********************************************************************************

*** Income **********************************************************************
replace WageHD = 0 if (WageHD == 9999998 | WageHD == 9999999)
replace BonusHD = 0 if (BonusHD == 999998 | BonusHD == 999999)
replace OvtimeHD = 0 if (OvtimeHD == 999998 | OvtimeHD == 999999)
replace TipHD = 0 if (TipHD == 999998 | TipHD == 999999)
replace CommHD = 0 if (CommHD == 999998| CommHD == 999999)
replace OthLabIHD = 0 if (OthLabIHD == 999998 | OthLabIHD == 999999)
rename  ProcticeHD PracticeHD
replace PracticeHD = 0 if (PracticeHD == 9999998 | PracticeHD == 9999999)
replace GardenHD = 0 if (GardenHD == -999999 | GardenHD == 9999998 | GardenHD == 9999999)
replace RoomerHD = 0 if (RoomerHD == 9999998 | RoomerHD == 9999999)
replace XtraLabHD = 0 if (XtraLabHD == 9999998 | XtraLabHD == 9999999)


*xtsum LaborIncHD WageHD BonusHD OvtimeHD TipHD CommHD OthLabIHD PracticeHD GardenHD RoomerHD XtraLabHD

replace RentIncHD = 0 if (RentIncHD == -99999 | RentIncHD == 999998 | RentIncHD == 999999)
replace DividHD = 0 if (DividHD == 999998 | DividHD == 999999)
replace InterestHD = 0 if (InterestHD == 999998 | InterestHD == 999999)
replace TrustHD = 0 if (TrustHD == 999998 | TrustHD == 999999)

replace AdcTanfHD = 0 if (AdcTanfHD == 999998 | AdcTanfHD == 999999)
replace SSIHD = 0 if (SSIHD == 999998 | SSIHD == 999999)
replace OthWelfareHD = 0 if (OthWelfareHD == 999998 | OthWelfareHD == 999999)
replace VaPensHD = 0 if (VaPensHD == 999998| VaPensHD == 999999)
replace RetireHD = 0 if (RetireHD == 999998 | RetireHD == 999999)
replace AnnuitHD = 0 if (AnnuitHD == 999998 | AnnuitHD == 999999)
replace OthPensHD = 0 if (OthPensHD == 999998 | OthPensHD == 999999)
replace UnempCompHD = 0 if (UnempCompHD == 999998 | UnempCompHD == 999999)
replace WorkCompHD = 0 if (WorkCompHD == 999998 | WorkCompHD == 999999)
replace ChildSupHD = 0 if (ChildSupHD == 999998 | ChildSupHD == 999999)
replace AlimonyHD  = 0 if (AlimonyHD == 999999 | AlimonyHD == 999998)

replace HelpFrRelaHD = 0 if (HelpFrRelaHD == 999998 | HelpFrRelaHD == 999999)
replace HelpFrOtrHD  = 0 if (HelpFrOtrHD == 999998 | HelpFrOtrHD == 999999)
replace AnythinHD    = 0 if (AnythinHD == 999998 | AnythinHD == 999999)

replace WageWF = 0 if (WageWF == 9999998 | WageWF == 9999999)
replace RentIncWF = 0 if (RentIncWF == -99999 | RentIncWF == 999998 | RentIncWF == 999999)
replace DividWF = 0 if (DividWF == 999998 | DividWF == 999999)
replace InterestWF = 0 if (InterestWF == 999998 | InterestWF == 999999)
replace TrustWF = 0 if (TrustWF == 999998 | TrustWF == 999999)
replace SSIWF = 0 if (SSIWF == 999998 | SSIWF == 999999)
replace OthWelfareWF = 0 if (OthWelfareWF == 999998 | OthWelfareWF == 999999)

replace Lumpsum = 0 if (Lumpsum == 9999998 | Lumpsum == 9999999)
replace Inherit = 0 if (Inherit == 9999998 | Inherit == 9999999)



gen LaborIncHD = WageHD+BonusHD+OvtimeHD+TipHD+CommHD+OthLabIHD+PracticeHD+GardenHD+RoomerHD+XtraLabHD
gen CapitIncHD = RentIncHD+DividHD+InterestHD+TrustHD
gen TranfIncHD = AdcTanfHD+SSIHD+OthWelfareHD+VaPensHD+RetireHD+AnnuitHD+OthPensHD+UnempCompHD+WorkCompHD+ChildSupHD+AlimonyHD
gen OtherIncHD = HelpFrRelaHD+HelpFrOtrHD+AnythinHD+Lumpsum+Inherit
gen LaborIncWF = WageWF
gen CapitIncWF = RentIncWF+DividWF+InterestWF+TrustWF
gen TranfIncWF = SSIWF+OthWelfareWF

gen TotFamInc = LaborIncHD+CapitIncHD+TranfIncHD+OtherIncHD+LaborIncWF+CapitIncWF+TranfIncWF
gen TotIncHD = LaborIncHD+CapitIncHD+TranfIncHD+OtherIncHD
gen TotIncWF = LaborIncWF+CapitIncWF+TranfIncWF
gen RatioLabIncHD = LaborIncHD / TotIncHD * 100
gen RatioLabIncWF = LaborIncWF / TotIncWF * 100



save "/Users/yeabinmoon/Dropbox/Last/Data/DisIncome/Data/2.refine_Second.dta", replace
