use "/Users/yeabinmoon/Dropbox/Last/Data/DisIncome/Data/0.J219539.dta", clear

rename ER30001  id1968
rename ER30002  pernum

gen pid=(id1968*1000) + pernum

drop ER25001 ER30000 ER36001 ER42001 ER47301

* drop wild code

drop if ER36928 == -999999

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

rename ER25004 CurState2005
rename ER25017 AgeHD2005
rename ER25019 AgeWF2005
rename ER25020 NumChild2005
rename ER25021 YoungChild2005
rename ER25023 Marital2005
rename ER25036 PropTax2005
rename ER25044 MortPayF2005
rename ER25055 MortPayS2005
rename ER25063 RentPay2005
rename ER25628 ChildCare2005
rename ER25910 WageHD2005
rename ER25914 BonusHD2005
rename ER25917 OvtimeHD2005
rename ER25920 TipHD2005
rename ER25923 CommHD2005
rename ER25926 OthLabIHD2005
rename ER25930 ProcticeHD2005
rename ER25947 GardenHD2005
rename ER25964 RoomerHD2005
rename ER25981 XtraLabHD2005
rename ER25984 RentIncHD2005
rename ER26317 RentIncWF2005
rename ER26001 DividHD2005
rename ER26334 DividWF2005
rename ER26018 InterestHD2005
rename ER26351 InterestWF2005
rename ER26035 TrustHD2005
rename ER26368 TrustWF2005
rename ER26051 AdcTanfHD2005
rename ER26068 SSIHD2005
rename ER26385 SSIWF2005
rename ER26084 OthWelfareHD2005
rename ER26433 OthWelfareWF2005
rename ER26101 VaPensHD2005
rename ER26117 RetireHD2005
rename ER26133 AnnuitHD2005
rename ER26149 OthPensHD2005
rename ER26166 UnempCompHD2005
rename ER26182 WorkCompHD2005
rename ER26198 ChildSupHD2005
rename ER26214 AlimonyHD2005
rename ER26230 HelpFrRelaHD2005
rename ER26246 HelpFrOtrHD2005
rename ER26262 AnythinHD2005
rename ER26281 WageWF2005

rename ER26513 Lumpsum2005
rename ER26514 Inherit2005

rename ER26516 Charit2005
rename ER26517 DedMed2005
rename ER26525 TotSup2005

rename ER27931 ImpLabIncHD2005
rename ER27943 ImpLabIncWF2005


rename ER36004 CurState2007
rename ER36017 AgeHD2007
rename ER36019 AgeWF2007
rename ER36020 NumChild2007
rename ER36021 YoungChild2007
rename ER36023 Marital2007
rename ER36036 PropTax2007
rename ER36044 MortPayF2007
rename ER36056 MortPayS2007
rename ER36065 RentPay2007
rename ER36633 ChildCare2007
rename ER36928 WageHD2007
rename ER36932 BonusHD2007
rename ER36935 OvtimeHD2007
rename ER36938 TipHD2007
rename ER36941 CommHD2007
rename ER36944 OthLabIHD2007
rename ER36948 ProcticeHD2007
rename ER36965 GardenHD2007
rename ER36982 RoomerHD2007
rename ER36999 XtraLabHD2007
rename ER37002 RentIncHD2007
rename ER37019 DividHD2007

rename ER37036 InterestHD2007
rename ER37053 TrustHD2007
rename ER37069 AdcTanfHD2007
rename ER37086 SSIHD2007
rename ER37102 OthWelfareHD2007
rename ER37119 VaPensHD2007
rename ER37135 RetireHD2007
rename ER37151 AnnuitHD2007
rename ER37167 OthPensHD2007
rename ER37184 UnempCompHD2007
rename ER37200 WorkCompHD2007
rename ER37216 ChildSupHD2007
rename ER37232 AlimonyHD2007
rename ER37248 HelpFrRelaHD2007
rename ER37264 HelpFrOtrHD2007
rename ER37280 AnythinHD2007

rename ER37299 WageWF2007
rename ER37335 RentIncWF2007
rename ER37352 DividWF2007
rename ER37369 InterestWF2007
rename ER37386 TrustWF2007
rename ER37403 SSIWF2007
rename ER37451 OthWelfareWF2007

rename ER37531 Lumpsum2007
rename ER37532 Inherit2007

rename ER37534 Charit2007
rename ER37535 DedMed2007
rename ER37543 TotSup2007

rename ER40921 ImpLabIncHD2007
rename ER40933 ImpLabIncWF2007


rename ER42004 CurState2009
rename ER42017 AgeHD2009
rename ER42019 AgeWF2009
rename ER42020 NumChild2009
rename ER42021 YoungChild2009
rename ER42023 Marital2009
rename ER42037 PropTax2009
rename ER42045 MortPayF2009
rename ER42064 MortPayS2009
rename ER42080 RentPay2009
rename ER42652 ChildCare2009
rename ER42919 WageHD2009
rename ER42923 BonusHD2009
rename ER42926 OvtimeHD2009
rename ER42929 TipHD2009
rename ER42932 CommHD2009
rename ER42935 OthLabIHD2009
rename ER42939 ProcticeHD2009
rename ER42956 GardenHD2009
rename ER42973 RoomerHD2009
rename ER42990 XtraLabHD2009
rename ER42993 RentIncHD2009
rename ER43010 DividHD2009

rename ER43027 InterestHD2009
rename ER43044 TrustHD2009
rename ER43060 AdcTanfHD2009
rename ER43077 SSIHD2009
rename ER43093 OthWelfareHD2009
rename ER43110 VaPensHD2009
rename ER43126 RetireHD2009
rename ER43142 AnnuitHD2009
rename ER43158 OthPensHD2009
rename ER43175 UnempCompHD2009
rename ER43191 WorkCompHD2009
rename ER43207 ChildSupHD2009
rename ER43223 AlimonyHD2009
rename ER43239 HelpFrRelaHD2009
rename ER43255 HelpFrOtrHD2009
rename ER43271 AnythinHD2009

rename ER43290 WageWF2009
rename ER43326 RentIncWF2009
rename ER43343 DividWF2009
rename ER43360 InterestWF2009
rename ER43377 TrustWF2009
rename ER43394 SSIWF2009
rename ER43442 OthWelfareWF2009

rename ER43522 Lumpsum2009
rename ER43523 Inherit2009

rename ER43525 Charit2009
rename ER43526 DedMed2009
rename ER43534 TotSup2009

rename ER46829 ImpLabIncHD2009
rename ER46841 ImpLabIncWF2009


rename ER47304 CurState2011
rename ER47317 AgeHD2011
rename ER47319 AgeWF2011
rename ER47320 NumChild2011
rename ER47321 YoungChild2011
rename ER47323 Marital2011
rename ER47342 PropTax2011
rename ER47350 MortPayF2011
rename ER47371 MortPayS2011
rename ER47387 RentPay2011
rename ER47970 ChildCare2011
rename ER48241 WageHD2011
rename ER48245 BonusHD2011
rename ER48248 OvtimeHD2011
rename ER48251 TipHD2011
rename ER48254 CommHD2011
rename ER48257 OthLabIHD2011
rename ER48261 ProcticeHD2011
rename ER48278 GardenHD2011
rename ER48295 RoomerHD2011
rename ER48312 XtraLabHD2011
rename ER48315 RentIncHD2011
rename ER48332 DividHD2011

rename ER48349 InterestHD2011
rename ER48366 TrustHD2011
rename ER48382 AdcTanfHD2011
rename ER48399 SSIHD2011
rename ER48415 OthWelfareHD2011
rename ER48435 VaPensHD2011
rename ER48451 RetireHD2011
rename ER48467 AnnuitHD2011
rename ER48483 OthPensHD2011
rename ER48500 UnempCompHD2011
rename ER48516 WorkCompHD2011
rename ER48532 ChildSupHD2011
rename ER48548 AlimonyHD2011
rename ER48564 HelpFrRelaHD2011
rename ER48580 HelpFrOtrHD2011
rename ER48596 AnythinHD2011

rename ER48615 WageWF2011
rename ER48651 RentIncWF2011
rename ER48668 DividWF2011
rename ER48685 InterestWF2011
rename ER48702 TrustWF2011
rename ER48719 SSIWF2011
rename ER48767 OthWelfareWF2011

rename ER48847 Lumpsum2011
rename ER48848 Inherit2011

rename ER48850 Charit2011
rename ER48851 DedMed2011
rename ER48859 TotSup2011

rename ER52237 ImpLabIncHD2011
rename ER52249 ImpLabIncWF2011

drop IndvId* Sequence* id1968 pernum

save "/Users/yeabinmoon/Dropbox/Last/Data/DisIncome/Data/1.rename.dta", replace
