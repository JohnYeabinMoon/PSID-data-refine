#delimit ;
*  PSID DATA CENTER *****************************************************
   JOBID            : 219581                            
   DATA_DOMAIN      : PSID                              
   USER_WHERE       : NULL                              
   FILE_TYPE        : All Individuals Data              
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : do                                
   CODEBOOK_TYPE    : PDF                               
   N_OF_VARIABLES   : 55                                
   N_OF_OBSERVATIONS: 29431                             
   MAX_REC_LENGTH   : 144                               
   DATE & TIME      : November 25, 2016 @ 15:08:45
*************************************************************************
;

infix
      ER30000        1 - 1     ER30001        2 - 5     ER30002        6 - 8    
      ER25001        9 - 9     ER25027       10 - 11    ER25046       12 - 13   
      ER25047       14 - 16    ER25048       17 - 20    ER25049       21 - 22   
      ER25057       23 - 24    ER25058       25 - 27    ER25059       28 - 31   
      ER25060       32 - 33    ER33801       34 - 38    ER33802       39 - 40   
      ER33803       41 - 42    ER36001       43 - 43    ER36027       44 - 45   
      ER36046       46 - 47    ER36047       48 - 50    ER36049       51 - 54   
      ER36050       55 - 56    ER36058       57 - 58    ER36059       59 - 61   
      ER36061       62 - 65    ER36062       66 - 67    ER33901       68 - 72   
      ER33902       73 - 74    ER33903       75 - 76    ER42001       77 - 77   
      ER42028       78 - 79    ER42047       80 - 81    ER42048       82 - 84   
      ER42050       85 - 88    ER42051       89 - 90    ER42066       91 - 92   
      ER42067       93 - 95    ER42069       96 - 99    ER42070      100 - 101  
      ER34001      102 - 106   ER34002      107 - 108   ER34003      109 - 110  
      ER47301      111 - 111   ER47328      112 - 113   ER47355      114 - 115  
      ER47356      116 - 118   ER47357      119 - 122   ER47358      123 - 124  
      ER47376      125 - 126   ER47377      127 - 129   ER47378      130 - 133  
      ER47379      134 - 135   ER34101      136 - 140   ER34102      141 - 142  
      ER34103      143 - 144  
using /Users/yeabinmoon/Dropbox/Last/Data/HomeInfo/Archive/J219581.txt, clear 
;

destring, replace ;

label variable ER30000    "RELEASE NUMBER"                           ;
label variable ER30001    "1968 INTERVIEW NUMBER"                    ;
label variable ER30002    "PERSON NUMBER                         68" ;
label variable ER25001    "RELEASE NUMBER"                           ;
label variable ER25027    "A8 ACTUAL # ROOMS"                        ;
label variable ER25046    "A25A CURR INTEREST RATE WHOLE PERCENT #1" ;
label variable ER25047    "A25A CURR INT RATE DECIMAL FRACTION #1"   ;
label variable ER25048    "A26 YEAR OBTAINED LOAN #1"                ;
label variable ER25049    "A27 YRS TO PAY MOR    1"                  ;
label variable ER25057    "A25A CURR INTEREST RATE WHOLE PERCENT #2" ;
label variable ER25058    "A25A CURR INT RATE DECIMAL FRACTION #2"   ;
label variable ER25059    "A26 YEAR OBTAINED LOAN #2"                ;
label variable ER25060    "A27 YRS TO PAY MOR    2"                  ;
label variable ER33801    "2005 INTERVIEW NUMBER"                    ;
label variable ER33802    "SEQUENCE NUMBER                       05" ;
label variable ER33803    "RELATION TO HEAD                      05" ;
label variable ER36001    "RELEASE NUMBER"                           ;
label variable ER36027    "A8 ACTUAL # ROOMS"                        ;
label variable ER36046    "A25A CURR INTEREST RATE WHOLE PERCENT #1" ;
label variable ER36047    "A25A CURR INT RATE DECIMAL FRACTION #1"   ;
label variable ER36049    "A26 YEAR OBTAINED LOAN #1"                ;
label variable ER36050    "A27 YRS TO PAY MOR    1"                  ;
label variable ER36058    "A25A CURR INTEREST RATE WHOLE PERCENT #2" ;
label variable ER36059    "A25A CURR INT RATE DECIMAL FRACTION #2"   ;
label variable ER36061    "A26 YEAR OBTAINED LOAN #2"                ;
label variable ER36062    "A27 YRS TO PAY MOR    2"                  ;
label variable ER33901    "2007 INTERVIEW NUMBER"                    ;
label variable ER33902    "SEQUENCE NUMBER                       07" ;
label variable ER33903    "RELATION TO HEAD                      07" ;
label variable ER42001    "RELEASE NUMBER"                           ;
label variable ER42028    "A8 ACTUAL # ROOMS"                        ;
label variable ER42047    "A25A CURR INTEREST RATE WHOLE PERCENT #1" ;
label variable ER42048    "A25A CURR INT RATE DECIMAL FRACTION #1"   ;
label variable ER42050    "A26 YEAR OBTAINED LOAN #1"                ;
label variable ER42051    "A27 YRS TO PAY MOR    1"                  ;
label variable ER42066    "A25A CURR INTEREST RATE WHOLE PERCENT #2" ;
label variable ER42067    "A25A CURR INT RATE DECIMAL FRACTION #2"   ;
label variable ER42069    "A26 YEAR OBTAINED LOAN #2"                ;
label variable ER42070    "A27 YRS TO PAY MOR    2"                  ;
label variable ER34001    "2009 INTERVIEW NUMBER"                    ;
label variable ER34002    "SEQUENCE NUMBER                       09" ;
label variable ER34003    "RELATION TO HEAD                      09" ;
label variable ER47301    "RELEASE NUMBER"                           ;
label variable ER47328    "A8 ACTUAL # ROOMS"                        ;
label variable ER47355    "A25A4 CURR INTEREST RATE WHOLE PRCNT #1"  ;
label variable ER47356    "A25A4 CURR INT RATE DECIMAL FRACTION #1"  ;
label variable ER47357    "A26 YEAR OBTAINED LOAN #1"                ;
label variable ER47358    "A27 YRS TO PAY MOR    1"                  ;
label variable ER47376    "A25A4 CURR INTEREST RATE WHOLE PRCNT #2"  ;
label variable ER47377    "A25A4 CURR INT RATE DECIMAL FRACTION #2"  ;
label variable ER47378    "A26 YEAR OBTAINED LOAN #2"                ;
label variable ER47379    "A27 YRS TO PAY MOR    2"                  ;
label variable ER34101    "2011 INTERVIEW NUMBER"                    ;
label variable ER34102    "SEQUENCE NUMBER                       11" ;
label variable ER34103    "RELATION TO HEAD                      11" ;

save "/Users/yeabinmoon/Dropbox/Last/Data/HomeInfo/Data/0.J219581.dta", replace
