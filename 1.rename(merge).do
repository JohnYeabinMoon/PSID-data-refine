use "/Users/yeabinmoon/Documents/Data/Consumption/Data/0.Merge_base.dta", clear

drop IndvId* Sequence* id1968 pernum

merge m:1 FamilyId1999 using "/Users/yeabinmoon/Documents/Data/Consumption/Merge_consumption/CON1999.dta"
drop _merge
merge m:1 FamilyId2001 using "/Users/yeabinmoon/Documents/Data/Consumption/Merge_consumption/CON2001.dta"
drop _merge

merge m:1 FamilyId2003 using "/Users/yeabinmoon/Documents/Data/Consumption/Merge_consumption/CON2003.dta"
drop _merge
merge m:1 FamilyId2005 using "/Users/yeabinmoon/Documents/Data/Consumption/Merge_consumption/CON2005.dta"
drop _merge
merge m:1 FamilyId2007 using "/Users/yeabinmoon/Documents/Data/Consumption/Merge_consumption/CON2007.dta"
drop _merge
merge m:1 FamilyId2009 using "/Users/yeabinmoon/Documents/Data/Consumption/Merge_consumption/CON2009.dta"
drop _merge
merge m:1 FamilyId2011 using "/Users/yeabinmoon/Documents/Data/Consumption/Merge_consumption/CON2011.dta"
drop _merge
merge m:1 FamilyId2013 using "/Users/yeabinmoon/Documents/Data/Consumption/Merge_consumption/CON2013.dta"
drop _merge

drop FamilyId*

 save "/Users/yeabinmoon/Documents/Data/Consumption/Data/1.rename(merge).dta", replace
