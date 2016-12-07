use "/Users/yeabinmoon/Dropbox/Last/Data/Wealth/Data/0.J219520.dta", clear

rename ER30001  id1968
rename ER30002  pernum

gen pid=(id1968*1000) + pernum

drop ER25001 ER30000 ER36001 ER42001 ER47301


* Drop wild code
drop if ER26577 == -400
drop if ER37567 == -99999999 
drop if ER37567 == -4000 



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

rename ER25029 HomeVal2005
rename ER36029 HomeVal2007
rename ER42030 HomeVal2009
rename ER47330 HomeVal2011

rename ER25042 FirstMort2005
rename ER25053 SecMort2005
rename ER36042 FirstMort2007
rename ER36054 SecMort2007
rename ER42043 FirstMort2009
rename ER42062 SecMort2009
rename ER47348 FirstMort2011
rename ER47369 SecMort2011

rename ER26535 OthEstate2005
rename ER26539 VehiclVal2005
rename ER26544 BusinFarm2005
rename ER26549 NonIRASto2005
rename ER26571 IraAnnVal2005
rename ER26577 SavingChe2005
rename ER26598 BondInsur2005
rename ER26603 AllOthDeb2005

rename ER37553 OthEstate2007
rename ER37557 VehiclVal2007
rename ER37562 BusinFarm2007
rename ER37567 NonIRASto2007
rename ER37589 IraAnnVal2007
rename ER37595 SavingChe2007
rename ER37616 BondInsur2007
rename ER37621 AllOthDeb2007

rename ER43544 OthEstate2009
rename ER43548 VehiclVal2009
rename ER43553 BusinFarm2009
rename ER43558 NonIRASto2009
rename ER43580 IraAnnVal2009
rename ER43586 SavingChe2009
rename ER43607 BondInsur2009
rename ER43612 AllOthDeb2009

rename ER48869 OthEstate2011
rename ER48873 VehiclVal2011
rename ER48878 BusinFarm2011
rename ER48883 NonIRASto2011
rename ER48905 IraAnnVal2011
rename ER48911 SavingChe2011
rename ER48932 BondInsur2011

replace ER48937 = . if (ER48937 == 9999999 | ER48937 == 9999998)
replace ER48945 = . if (ER48945 == 9999999 | ER48945 == 9999998)
replace ER48949 = . if (ER48949 == 9999999 | ER48949 == 9999998)
replace ER48953 = . if (ER48953 == 9999999 | ER48953 == 9999998)
replace ER48957 = . if (ER48957 == 9999999 | ER48957 == 9999998)

rename ER48937 CreditCard2011
rename ER48945 StudentLoan2011
rename ER48949 MedicalBills2011
rename ER48953 LegalBills2011
rename ER48957 LoanfrmRel2011

gen AllOthDeb2011 = CreditCard2011 + StudentLoan2011 + MedicalBills2011 + LegalBills2011 + LoanfrmRel2011
drop CreditCard2011 StudentLoan2011 MedicalBills2011 LegalBills2011 LoanfrmRel2011


**** Imputed value refine

rename S705 ImpSaving2005
rename S805 ImpSaving2007
rename ER46942 ImpSaving2009
rename ER52350 ImpSaving2011

rename S707 ImpOtherdebt2005
rename S807 ImpOtherdebt2007
rename ER46946 ImpOtherdebt2009
gen ImpOtherdebt2011 = ER52372 + ER52376 + ER52380 + ER52384 + ER52388
drop ER52372 ER52376 ER52380 ER52384 ER52388

rename S709 ImpRealEstate2005
rename S809 ImpRealEstate2007
rename ER46950 ImpRealEstate2009
rename ER52354 ImpRealEstate2011

rename S711 ImpStock2005
rename S713 ImpVehicle2005
rename S719 ImpIRA2005
rename S720 ImpHome2005
rename S716 ImpNonHomeWealth2005
rename S717 ImpNetWealth2005

rename S811 ImpStock2007
rename S813 ImpVehicle2007
rename S819 ImpIRA2007
rename S820 ImpHome2007
rename S816 ImpNonHomeWealth2007
rename S817 ImpNetWealth2007

rename ER46954 ImpStock2009
rename ER46956 ImpVehicle2009
rename ER46964 ImpIRA2009
rename ER46966 ImpHome2009
rename ER46968 ImpNonHomeWealth2009
rename ER46970 ImpNetWealth2009

rename ER52358 ImpStock2011
rename ER52360 ImpVehicle2011
rename ER52368 ImpIRA2011
rename ER52390 ImpHome2011
rename ER52392 ImpNonHomeWealth2011
rename ER52394 ImpNetWealth2011

rename S703 ImpFarmBus2005
rename S803 ImpFarmBus2007
rename ER46938 ImpFarmBus2009
rename ER52346 ImpFarmBus2011
   
rename S715 ImpOthAsset2005
rename S815 ImpOthAsset2007
rename ER46960 ImpOthAsset2009
rename ER52364 ImpOthAsset2011

drop Sequence* IndvId* id1968 pernum

save "/Users/yeabinmoon/Dropbox/Last/Data/Wealth/Data/1.rename.dta", replace
