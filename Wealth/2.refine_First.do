use "/Users/yeabinmoon/Dropbox/Last/Data/Wealth/Data/1.rename.dta", clear

reshape long AllOthDeb BondInsur BusinFarm FirstMort HomeVal ImpFarmBus ImpHome ImpIRA ImpNetWealth ImpNonHomeWealth ImpOthAsset ImpOtherdebt ImpRealEstate ImpSaving ImpStock ImpVehicle IraAnnVal NonIRASto OthEstate RelToHD SavingChe SecMort VehiclVal, i(pid) j(year)


* Treating missing and Top-code problem
***** Drop them
replace AllOthDeb = . if AllOthDeb > 999999996
replace BondInsur = . if BondInsur > 9999996
replace BusinFarm = . if BusinFarm > 9999996     | BusinFarm < -4500000


replace FirstMort = . if FirstMort > 9999996 
replace HomeVal   = . if HomeVal   > 9999996
replace IraAnnVal = . if IraAnnVal > 999999996
replace NonIRASto = . if NonIRASto > 9999996     | NonIRASto < -4000

replace OthEstate = . if OthEstate > 9999996 	 | OthEstate < -400000


replace SavingChe = . if SavingChe > 999999996
replace SecMort   = . if SecMort   > 9999996 
replace VehiclVal = . if VehiclVal > 999999996   | VehiclVal < -40000


gen MortDebt = FirstMort + SecMort
gen NetHome  = HomeVal   - MortDebt
gen Liquid   = NonIRASto + SavingChe + BondInsur
gen Illiquid = HomeVal   + OthEstate + VehiclVal + BusinFarm + IraAnnVal
gen Debt     = MortDebt  + AllOthDeb
gen NetWorth = HomeVal   + OthEstate + VehiclVal + BusinFarm + IraAnnVal+BondInsur+NonIRASto+SavingChe-MortDebt-AllOthDeb
gen NonHomeW = OthEstate +VehiclVal  +BusinFarm  + IraAnnVal + BondInsur+NonIRASto+SavingChe-AllOthDeb

gen Lever = MortDebt / HomeVal * 100
replace Lever = 0 if MortDebt == 0 & HomeVal > 0
gen ImpLiquid = ImpStock + ImpSaving + ImpOthAsset

drop FirstMort SecMort

save "/Users/yeabinmoon/Dropbox/Last/Data/Wealth/Data/2.refine_First.dta", replace



***** Using Imputed values
* ImpFarmBus ImpHome ImpIRA ImpNetWealth ImpNonHomeWealth ImpOthAsset ImpOtherdebt ImpRealEstate ImpSaving ImpStock ImpVehicle
	
*gen ImpLiquid = ImpStock + ImpSaving + ImpOthAsset
* ImpHome ImpNonHomeWealth ImpNetWealth

	



*reshape wide HomeVal FirstMort SecMort OthEstate VehiclVal BusinFarm NonIRASto IraAnnVal SavingChe BondInsur ImpFarmBus ImpSaving ImpRealEstate ImpStock ImpVehicle ImpOthAsset ImpIRA ImpHome ImpNonHomeWealth ImpNetWealth RelToHD AllOthDeb ImpOtherdebt AllOthDebF BondInsurF BusinFarmF FirstMortF HomeValF IraAnnValF NonIRAStoF OthEstateF SavingCheF SecMortF VehiclValF MortDebtF NetHomeF LiquidF IlliquidF DebtF NetWorthF NonHomeWF AllOthDebS BondInsurS BusinFarmS FirstMortS HomeValS IraAnnValS NonIRAStoS OthEstateS SavingCheS SecMortS VehiclValS MortDebtS NetHomeS LiquidS IlliquidS DebtS NetWorthS NonHomeWS ImpLiquid, i(pid) j(year)

*save "/Users/yeabinmoon/Dropbox/Last/Data/Wealth/Data/2.refine.dta", replace

* Illiquid Asset: HomeVal  OthEstate  VehiclVal (net value) BusinFarm IraAnnVal 
* Liquid: NonIRASto  SavingChe  BondInsur

* Debt: MortDebt (FirstMort+SecMort) AllOthDeb
