use "/Users/yeabinmoon/Dropbox/Last/Data/Addition/Data/1.rename.dta", clear

reshape long YearMoved WhyMoved SelfEmpHD SelfEmpWF RaceHD BealeRaw RuralUrban EduHD EduWF CoreWeight RelToHD, i(pid) j(year)

replace YearMoved = 0 if YearMoved > 9995
replace WhyMoved  = 0 if WhyMoved  > 96
replace RaceHD = 0 if (RaceHD == 9)
drop BealeRaw
replace RuralUrban = 0 if RuralUrban > 98
replace EduHD = 0 if (EduHD == 99)
replace EduWF = 0 if (EduWF == 99)

drop SelfEmpHD SelfEmpWF
*reshape wide YearMoved WhyMoved SelfEmpHD SelfEmpWF RaceHD RuralUrban EduHD EduWF CoreWeight RelToHD, i(pid) j(year)


* RaceHD = 1: White
* RaceHD = 2: Black
* RaceHD = 3: Asian
* RaceHD = 0: Other
replace RaceHD = 0 if RaceHD == 3 | RaceHD == 5 | RaceHD == 7
replace RaceHD = 3 if RaceHD == 4

* Diploma = 0: less than highschool education (no highschool diploma)
* Diploma = 1: less than college education (no college diploma)
* Diploma = 2: more than college education


gen DiplomaHD = .
replace DiplomaHD = 0 if EduHD < 12
replace DiplomaHD = 1 if EduHD == 12 | EduHD == 13 | EduHD == 14 | EduHD == 15 
replace DiplomaHD = 2 if EduHD == 16 | EduHD == 17

gen DiplomaWF = .
replace DiplomaWF = 0 if EduWF < 12
replace DiplomaWF = 1 if EduWF == 12 | EduWF == 13 | EduWF == 14 | EduWF == 15 
replace DiplomaWF = 2 if EduWF == 16 | EduWF == 17


*tabulate EduWF
*tabulate RuralUrban



save "/Users/yeabinmoon/Dropbox/Last/Data/Addition/Data/2.refine_Second.dta"
