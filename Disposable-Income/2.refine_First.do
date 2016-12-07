use "/Users/yeabinmoon/Dropbox/Last/Data/DisIncome/Data/1.rename.dta", clear

reshape long AdcTanfHD AgeHD AgeWF AlimonyHD AnnuitHD AnythinHD BonusHD Charit ChildCare ChildSupHD CommHD CurState DedMed DividHD DividWF GardenHD HelpFrOtrHD HelpFrRelaHD ImpLabIncHD ImpLabIncWF Inherit InterestHD InterestWF Lumpsum Marital MortPayF MortPayS NumChild OthLabIHD OthPensHD OthWelfareHD OthWelfareWF OvtimeHD ProcticeHD PropTax RelToHD RentIncHD RentIncWF RentPay RetireHD RoomerHD SSIHD SSIWF TipHD TotSup TrustHD TrustWF UnempCompHD VaPensHD WageHD WageWF WorkCompHD XtraLabHD YoungChild, i(pid) j(year) 

* The first way to deal with missing values is to drop them


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
replace PropTax = . if (PropTax == 99998 | PropTax == 99999)
replace MortPayF = . if (MortPayF == 99998 | MortPayF == 99999)
replace MortPayS = . if (MortPayS == 99998 | MortPayS == 99999)
replace MortPayF = MortPayF * 12
replace MortPayS = MortPayS * 12
gen MortPay = MortPayF + MortPayS
drop MortPayF MortPayS
replace RentPay = . if (RentPay == 99998 | RentPay == 99999)
replace RentPay = RentPay * 12
replace ChildCare = . if (ChildCare == 999998 | ChildCare == 999999)
replace Charit = . if (Charit == 999998 | Charit == 999999)
replace DedMed = . if (DedMed == 999998 | DedMed == 999999)
replace TotSup = . if (TotSup == 9999998 | TotSup == 9999999)
*********************************************************************************

*** Income **********************************************************************
replace WageHD = . if (WageHD == 9999998 | WageHD == 9999999)
replace BonusHD = . if (BonusHD == 999998 | BonusHD == 999999)
replace OvtimeHD = . if (OvtimeHD == 999998 | OvtimeHD == 999999)
replace TipHD = . if (TipHD == 999998 | TipHD == 999999)
replace CommHD = . if (CommHD == 999998| CommHD == 999999)
replace OthLabIHD = . if (OthLabIHD == 999998 | OthLabIHD == 999999)
rename  ProcticeHD PracticeHD
replace PracticeHD = . if (PracticeHD == 9999998 | PracticeHD == 9999999)
replace GardenHD = . if (GardenHD == -999999 | GardenHD == 9999998 | GardenHD == 9999999)
replace RoomerHD = . if (RoomerHD == 9999998 | RoomerHD == 9999999)
replace XtraLabHD = . if (XtraLabHD == 9999998 | XtraLabHD == 9999999)


*xtsum LaborIncHD WageHD BonusHD OvtimeHD TipHD CommHD OthLabIHD PracticeHD GardenHD RoomerHD XtraLabHD

replace RentIncHD = . if (RentIncHD == -99999 | RentIncHD == 999998 | RentIncHD == 999999)
replace DividHD = . if (DividHD == 999998 | DividHD == 999999)
replace InterestHD = . if (InterestHD == 999998 | InterestHD == 999999)
replace TrustHD =. if (TrustHD == 999998 | TrustHD == 999999)



replace AdcTanfHD = . if (AdcTanfHD == 999998 | AdcTanfHD == 999999)
replace SSIHD = . if (SSIHD == 999998 | SSIHD == 999999)
replace OthWelfareHD = . if (OthWelfareHD == 999998 | OthWelfareHD == 999999)
replace VaPensHD =. if (VaPensHD == 999998| VaPensHD == 999999)
replace RetireHD = . if (RetireHD == 999998 | RetireHD == 999999)
replace AnnuitHD = . if (AnnuitHD == 999998 | AnnuitHD == 999999)
replace OthPensHD = . if (OthPensHD == 999998 | OthPensHD == 999999)
replace UnempCompHD = . if (UnempCompHD == 999998 | UnempCompHD == 999999)
replace WorkCompHD = . if (WorkCompHD == 999998 | WorkCompHD == 999999)
replace ChildSupHD = . if (ChildSupHD == 999998 | ChildSupHD == 999999)
replace AlimonyHD = . if (AlimonyHD == 999999 | AlimonyHD == 999998)

replace HelpFrRelaHD = . if (HelpFrRelaHD == 999998 | HelpFrRelaHD == 999999)
replace HelpFrOtrHD = . if (HelpFrOtrHD == 999998 | HelpFrOtrHD == 999999)
replace AnythinHD = . if (AnythinHD == 999998 | AnythinHD == 999999)

replace WageWF =. if (WageWF == 9999998 | WageWF == 9999999)
replace RentIncWF = . if (RentIncWF == -99999 | RentIncWF == 999998 | RentIncWF == 999999)
replace DividWF = . if (DividWF == 999998 | DividWF == 999999)
replace InterestWF = . if (InterestWF == 999998 | InterestWF == 999999)
replace TrustWF = . if (TrustWF == 999998 | TrustWF == 999999)
replace SSIWF = . if (SSIWF == 999998 | SSIWF == 999999)
replace OthWelfareWF = . if (OthWelfareWF == 999998 | OthWelfareWF == 999999)

replace Lumpsum = . if (Lumpsum == 9999998 | Lumpsum == 9999999)
replace Inherit = . if (Inherit == 9999998 | Inherit == 9999999)



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

*summ LaborIncHD CapitIncHD TranfIncHD OtherIncHD LaborIncWF CapitIncWF TranfIncWF

*ImpLabIncHD ImpLabIncWF


*************************
* Need to lump 
* Labor income
* Transfer income
* Capital income
* Other income
* Payment for calculating disposable income by NBER



*reshape wide AdcTanfHD AgeHD AgeWF AlimonyHD AnnuitHD AnythinHD BonusHD Charit ChildCare ChildSupHD CommHD CurState DedMed DividHD DividWF GardenHD HelpFrOtrHD HelpFrRelaHD ImpLabIncHD ImpLabIncWF Inherit InterestHD InterestWF Lumpsum Marital MortPay NumChild OthLabIHD OthPensHD OthWelfareHD OthWelfareWF OvtimeHD PracticeHD PropTax RelToHD RentIncHD RentIncWF RentPay RetireHD RoomerHD SSIHD SSIWF TipHD TotSup TrustHD TrustWF UnempCompHD VaPensHD WageHD WageWF WorkCompHD XtraLabHD YoungChild, i(pid) j(year)

save "/Users/yeabinmoon/Dropbox/Last/Data/DisIncome/Data/2.refine_First.dta", replace
