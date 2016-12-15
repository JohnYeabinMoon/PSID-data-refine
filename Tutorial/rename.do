rename ER30001  id1968
rename ER30002  pernum

gen pid=(id1968*1000) + pernum

rename ER33801 IndvId2005
rename ER33901 IndvId2007


rename	ER33802	Sequence2005
rename	ER33902	Sequence2007

rename	ER33803	RelToHD2005
rename	ER33903	RelToHD2007

drop id1968 IndvId* pernum ER30000 ER25001 ER36001 Sequence*

rename ER25029 HomeVal2005
rename ER36029 HomeVal2007
rename ER25042 FirMort2005
rename ER36042 FirMort2007
rename ER25053 SecMort2005
rename ER36054 SecMort2007

reshape long HomeVal FirMort SecMort RelToHD, i(pid) j(year)

gen Mort = FirMort + SecMort

