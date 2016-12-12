use "/Users/yeabinmoon/Dropbox/Last/Data/Addition/Data/0.J219584.dta", clear

rename ER30001  id1968
rename ER30002  pernum

gen pid=(id1968*1000) + pernum

drop ER25001 ER30000 ER36001 ER42001 ER47301

* drop wild code

drop if ER27393 == 0
drop if ER40565 == 0

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

rename ER25100 YearMoved2005
rename ER25101 WhyMoved2005
rename ER25129 SelfEmpHD2005
rename ER25387 SelfEmpWF2005
rename ER27393 RaceHD2005
rename ER28043 BealeRaw2005
rename ER28043A RuralUrban2005
rename ER28047 EduHD2005
rename ER28048 EduWF2005
rename ER28078 CoreWeight2005

rename ER36105 YearMoved2007
rename ER36106 WhyMoved2007
rename ER36134 SelfEmpHD2007
rename ER36392 SelfEmpWF2007
rename ER40565 RaceHD2007
rename ER41033 BealeRaw2007
rename ER41033A RuralUrban2007
rename ER41037 EduHD2007
rename ER41038 EduWF2007
rename ER41069 CoreWeight2007

rename ER42134 YearMoved2009
rename ER42135 WhyMoved2009
rename ER42169 SelfEmpHD2009
rename ER42421 SelfEmpWF2009
rename ER46543 RaceHD2009
rename ER46975 BealeRaw2009
rename ER46975A RuralUrban2009
rename ER46981 EduHD2009
rename ER46982 EduWF2009
rename ER47012 CoreWeight2009

rename ER47442 YearMoved2011
rename ER47443 WhyMoved2011
rename ER47482 SelfEmpHD2011
rename ER47739 SelfEmpWF2011
rename ER51904 RaceHD2011
rename ER52399 BealeRaw2011
rename ER52399A RuralUrban2011
rename ER52405 EduHD2011
rename ER52406 EduWF2011
rename ER52436 CoreWeight2011

gen SRC = 0
replace SRC = 1 if (id1968>=1 & id1968<=2930)

gen SEO = 0
replace SEO = 1 if (id1968>=5001 & id1968<=6872)

gen ImmigrantSample = 0
replace ImmigrantSample = 1 if (id1968>=3001 & id1968<=3511)

gen LatinoSample = 0
replace LatinoSample = 1 if (id1968>=7001 & id1968<=9308)

drop IndvId* Sequence* id1968 pernum

save "/Users/yeabinmoon/Dropbox/Last/Data/Addition/Data/1.rename.dta", replace

