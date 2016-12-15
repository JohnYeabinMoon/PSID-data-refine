#delimit ;
*  PSID DATA CENTER *****************************************************
   JOBID            : 220485                            
   DATA_DOMAIN      : PSID                              
   USER_WHERE       : NULL                              
   FILE_TYPE        : All Individuals Data              
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : do                                
   CODEBOOK_TYPE    : PDF                               
   N_OF_VARIABLES   : 17                                
   N_OF_OBSERVATIONS: 25262                             
   MAX_REC_LENGTH   : 70                                
   DATE & TIME      : December 15, 2016 @ 1:50:01
*************************************************************************
;

infix
      ER30000        1 - 1     ER30001        2 - 5     ER30002        6 - 8    
      ER25001        9 - 9     ER25029       10 - 16    ER25042       17 - 23   
      ER25053       24 - 30    ER33801       31 - 35    ER33802       36 - 37   
      ER33803       38 - 39    ER36001       40 - 40    ER36029       41 - 47   
      ER36042       48 - 54    ER36054       55 - 61    ER33901       62 - 66   
      ER33902       67 - 68    ER33903       69 - 70   
using /Users/yeabinmoon/Downloads/J220485/J220485.txt, clear 
;

destring, replace ;

label variable ER30000    "RELEASE NUMBER"                           ;
label variable ER30001    "1968 INTERVIEW NUMBER"                    ;
label variable ER30002    "PERSON NUMBER                         68" ;
label variable ER25001    "RELEASE NUMBER"                           ;
label variable ER25029    "A20 HOUSE VALUE"                          ;
label variable ER25042    "A24 REM PRINCIPAL MOR 1"                  ;
label variable ER25053    "A24 REM PRINCIPAL MOR 2"                  ;
label variable ER33801    "2005 INTERVIEW NUMBER"                    ;
label variable ER33802    "SEQUENCE NUMBER                       05" ;
label variable ER33803    "RELATION TO HEAD                      05" ;
label variable ER36001    "RELEASE NUMBER"                           ;
label variable ER36029    "A20 HOUSE VALUE"                          ;
label variable ER36042    "A24 REM PRINCIPAL MOR 1"                  ;
label variable ER36054    "A24 REM PRINCIPAL MOR 2"                  ;
label variable ER33901    "2007 INTERVIEW NUMBER"                    ;
label variable ER33902    "SEQUENCE NUMBER                       07" ;
label variable ER33903    "RELATION TO HEAD                      07" ;
