#delimit ;
*  PSID DATA CENTER *****************************************************
   JOBID            : 219584                            
   DATA_DOMAIN      : PSID                              
   USER_WHERE       : NULL                              
   FILE_TYPE        : All Individuals Data              
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : do                                
   CODEBOOK_TYPE    : PDF                               
   N_OF_VARIABLES   : 59                                
   N_OF_OBSERVATIONS: 29431                             
   MAX_REC_LENGTH   : 142                               
   DATE & TIME      : November 25, 2016 @ 16:00:32
*************************************************************************
;

infix
      ER30000        1 - 1     ER30001        2 - 5     ER30002        6 - 8    
      ER25001        9 - 9     ER25100       10 - 13    ER25101       14 - 15   
      ER25129       16 - 16    ER25387       17 - 17    ER27393       18 - 18   
      ER28043       19 - 20    ER28043A      21 - 22    ER28047       23 - 24   
      ER28048       25 - 26    ER28078       27 - 33    ER33801       34 - 38   
      ER33802       39 - 40    ER33803       41 - 42    ER36001       43 - 43   
      ER36105       44 - 47    ER36106       48 - 48    ER36134       49 - 49   
      ER36392       50 - 50    ER40565       51 - 51    ER41033       52 - 53   
      ER41033A      54 - 55    ER41037       56 - 57    ER41038       58 - 59   
      ER41069       60 - 66    ER33901       67 - 71    ER33902       72 - 73   
      ER33903       74 - 75    ER42001       76 - 76    ER42134       77 - 80   
      ER42135       81 - 81    ER42169       82 - 82    ER42421       83 - 83   
      ER46543       84 - 84    ER46975       85 - 86    ER46975A      87 - 88   
      ER46981       89 - 90    ER46982       91 - 92    ER47012       93 - 99   
      ER34001      100 - 104   ER34002      105 - 106   ER34003      107 - 108  
      ER47301      109 - 109   ER47442      110 - 113   ER47443      114 - 115  
      ER47482      116 - 116   ER47739      117 - 117   ER51904      118 - 118  
      ER52399      119 - 120   ER52399A     121 - 122   ER52405      123 - 124  
      ER52406      125 - 126   ER52436      127 - 133   ER34101      134 - 138  
      ER34102      139 - 140   ER34103      141 - 142  
using /Users/yeabinmoon/Dropbox/Last/Data/Addition/Archive/J219584.txt, clear 
;

destring, replace ;

label variable ER30000    "RELEASE NUMBER"                           ;
label variable ER30001    "1968 INTERVIEW NUMBER"                    ;
label variable ER30002    "PERSON NUMBER                         68" ;
label variable ER25001    "RELEASE NUMBER"                           ;
label variable ER25100    "A49 YEAR MOVED"                           ;
label variable ER25101    "A50 WHY MOVED 1ST"                        ;
label variable ER25129    "BC22 WORK SELF/OTR?--JOB 1"               ;
label variable ER25387    "DE22 WORK SELF/OTR?--JOB 1"               ;
label variable ER27393    "L40 RACE OF HEAD-MENTION 1"               ;
label variable ER28043    "BEALE RURAL-URBAN CODE"                   ;
label variable ER28043A   "RURAL-URBAN CODE (BEALE-COLLAPSED)"       ;
label variable ER28047    "COMPLETED ED-HD"                          ;
label variable ER28048    "COMPLETED ED-WF"                          ;
label variable ER28078    "2005 CORE/IMMIGRANT FAM WEIGHT NUMBER 1"  ;
label variable ER33801    "2005 INTERVIEW NUMBER"                    ;
label variable ER33802    "SEQUENCE NUMBER                       05" ;
label variable ER33803    "RELATION TO HEAD                      05" ;
label variable ER36001    "RELEASE NUMBER"                           ;
label variable ER36105    "A49 YEAR MOVED"                           ;
label variable ER36106    "A50 WHY MOVED 1ST"                        ;
label variable ER36134    "BC22 WORK SELF/OTR?--JOB 1"               ;
label variable ER36392    "DE22 WORK SELF/OTR?--JOB 1"               ;
label variable ER40565    "L40 RACE OF HEAD-MENTION 1"               ;
label variable ER41033    "BEALE RURAL-URBAN CODE"                   ;
label variable ER41033A   "RURAL-URBAN CODE (BEALE-COLLAPSED)"       ;
label variable ER41037    "COMPLETED ED-HD"                          ;
label variable ER41038    "COMPLETED ED-WF"                          ;
label variable ER41069    "2007 CORE/IMMIGRANT FAM WEIGHT NUMBER 1"  ;
label variable ER33901    "2007 INTERVIEW NUMBER"                    ;
label variable ER33902    "SEQUENCE NUMBER                       07" ;
label variable ER33903    "RELATION TO HEAD                      07" ;
label variable ER42001    "RELEASE NUMBER"                           ;
label variable ER42134    "A49 YEAR MOVED"                           ;
label variable ER42135    "A50 WHY MOVED 1ST MENTION"                ;
label variable ER42169    "BC22 WORK SELF/OTR?--JOB 1"               ;
label variable ER42421    "DE22 WORK SELF/OTR?--JOB 1"               ;
label variable ER46543    "L40 RACE OF HEAD-MENTION 1"               ;
label variable ER46975    "BEALE RURAL-URBAN CODE"                   ;
label variable ER46975A   "RURAL-URBAN CODE (BEALE-COLLAPSED)"       ;
label variable ER46981    "COMPLETED ED-HD"                          ;
label variable ER46982    "COMPLETED ED-WF"                          ;
label variable ER47012    "2009 CORE/IMMIGRANT FAM WEIGHT NUMBER 1"  ;
label variable ER34001    "2009 INTERVIEW NUMBER"                    ;
label variable ER34002    "SEQUENCE NUMBER                       09" ;
label variable ER34003    "RELATION TO HEAD                      09" ;
label variable ER47301    "RELEASE NUMBER"                           ;
label variable ER47442    "A49 YEAR MOVED"                           ;
label variable ER47443    "A50 WHY MOVED 1ST MENTION"                ;
label variable ER47482    "BC22 WORK SELF/OTR?--JOB 1"               ;
label variable ER47739    "DE22 WORK SELF/OTR?--JOB 1"               ;
label variable ER51904    "L40 RACE OF HEAD-MENTION 1"               ;
label variable ER52399    "BEALE RURAL-URBAN CODE"                   ;
label variable ER52399A   "RURAL-URBAN CODE (BEALE-COLLAPSED)"       ;
label variable ER52405    "COMPLETED ED-HD"                          ;
label variable ER52406    "COMPLETED ED-WF"                          ;
label variable ER52436    "2011 CORE/IMMIGRANT FAM WEIGHT NUMBER 1"  ;
label variable ER34101    "2011 INTERVIEW NUMBER"                    ;
label variable ER34102    "SEQUENCE NUMBER                       11" ;
label variable ER34103    "RELATION TO HEAD                      11" ;

save "/Users/yeabinmoon/Dropbox/Last/Data/Addition/Data/0.J219584.dta", replace
