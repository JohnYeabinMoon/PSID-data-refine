use "/Users/yeabinmoon/Dropbox/Last/Data/Wealth/Data/1.rename.dta", clear

reshape long AllOthDeb BondInsur BusinFarm FirstMort HomeVal ImpFarmBus ImpHome ImpIRA ImpNetWealth ImpNonHomeWealth ImpOthAsset ImpOtherdebt ImpRealEstate ImpSaving ImpStock ImpVehicle IraAnnVal NonIRASto OthEstate RelToHD SavingChe SecMort VehiclVal, i(pid) j(year)

* Treating missing and Top-code problem
***** Treat them as zero

replace AllOthDeb = 0 if AllOthDeb > 999999996
replace BondInsur = 0 if BondInsur > 9999996
replace BusinFarm = 0 if BusinFarm > 9999996     | BusinFarm < -4500000


replace FirstMort = 0 if FirstMort > 9999996 
replace HomeVal   = 0 if HomeVal   > 9999996
replace IraAnnVal = 0 if IraAnnVal > 999999996
replace NonIRASto = 0 if NonIRASto > 9999996     | NonIRASto < -4000

replace OthEstate = 0 if OthEstate > 9999996 	 | OthEstate < -400000


replace SavingChe = 0 if SavingChe > 999999996
replace SecMort   = 0 if SecMort   > 9999996 
replace VehiclVal = 0 if VehiclVal > 999999996   | VehiclVal < -40000


gen MortDebt = FirstMort + SecMort
gen NetHome  = HomeVal   - MortDebt
gen Liquid   = NonIRASto + SavingChe + BondInsur
gen Illiquid = HomeVal   + OthEstate + VehiclVal + BusinFarm + IraAnnVal
gen Debt     = MortDebt  + AllOthDeb
gen NetWorth = HomeVal   + OthEstate + VehiclVal + BusinFarm + IraAnnVal+BondInsur+NonIRASto+SavingChe-MortDebt-AllOthDeb
gen NonHomeW = OthEstate +VehiclVal  +BusinFarm  + IraAnnVal + BondInsur+NonIRASto+SavingChe-AllOthDeb

gen Lever = MortDebt / HomeVal * 100
replace Lever = 0 if MortDebt == 0 & HomeVal > 0

drop FirstMort SecMort


save "/Users/yeabinmoon/Dropbox/Last/Data/Wealth/Data/2.refine_Second.dta", replace
