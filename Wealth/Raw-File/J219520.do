#delimit ;
*  PSID DATA CENTER *****************************************************
   JOBID            : 219520                            
   DATA_DOMAIN      : PSID                              
   USER_WHERE       : NULL                              
   FILE_TYPE        : All Individuals Data              
   OUTPUT_DATA_TYPE : ASCII                             
   STATEMENTS       : do                                
   CODEBOOK_TYPE    : PDF                               
   N_OF_VARIABLES   : 115                               
   N_OF_OBSERVATIONS: 29431                             
   MAX_REC_LENGTH   : 868                               
   DATE & TIME      : November 23, 2016 @ 15:31:52
*************************************************************************
;

infix
      ER30000        1 - 1     ER30001        2 - 5     ER30002        6 - 8    
      ER25001        9 - 9     ER25029       10 - 16    ER25042       17 - 23   
      ER25053       24 - 30    ER26535       31 - 39    ER26539       40 - 48   
      ER26544       49 - 57    ER26549       58 - 66    ER26571       67 - 75   
      ER26577       76 - 84    ER26598       85 - 93    ER26603       94 - 102  
      S703         103 - 111   S705         112 - 120   S707         121 - 129  
      S709         130 - 138   S711         139 - 147   S713         148 - 156  
      S715         157 - 165   S719         166 - 174   S720         175 - 183  
      S716         184 - 192   S717         193 - 201   ER33801      202 - 206  
      ER33802      207 - 208   ER33803      209 - 210   ER36001      211 - 211  
      ER36029      212 - 218   ER36042      219 - 225   ER36054      226 - 232  
      ER37553      233 - 241   ER37557      242 - 250   ER37562      251 - 259  
      ER37567      260 - 268   ER37589      269 - 277   ER37595      278 - 286  
      ER37616      287 - 295   ER37621      296 - 304   S803         305 - 313  
      S805         314 - 322   S807         323 - 331   S809         332 - 340  
      S811         341 - 349   S813         350 - 358   S815         359 - 367  
      S819         368 - 376   S820         377 - 385   S816         386 - 394  
      S817         395 - 403   ER33901      404 - 408   ER33902      409 - 410  
      ER33903      411 - 412   ER42001      413 - 413   ER42030      414 - 420  
      ER42043      421 - 427   ER42062      428 - 434   ER43544      435 - 443  
      ER43548      444 - 452   ER43553      453 - 461   ER43558      462 - 470  
      ER43580      471 - 479   ER43586      480 - 488   ER43607      489 - 497  
      ER43612      498 - 506   ER46938      507 - 515   ER46942      516 - 524  
      ER46946      525 - 533   ER46950      534 - 542   ER46954      543 - 551  
      ER46956      552 - 560   ER46960      561 - 569   ER46964      570 - 578  
      ER46966      579 - 587   ER46968      588 - 596   ER46970      597 - 605  
      ER34001      606 - 610   ER34002      611 - 612   ER34003      613 - 614  
      ER47301      615 - 615   ER47330      616 - 622   ER47348      623 - 629  
      ER47369      630 - 636   ER48869      637 - 645   ER48873      646 - 654  
      ER48878      655 - 663   ER48883      664 - 672   ER48905      673 - 681  
      ER48911      682 - 690   ER48932      691 - 699   ER48937      700 - 706  
      ER48945      707 - 713   ER48949      714 - 720   ER48953      721 - 727  
      ER48957      728 - 734   ER52346      735 - 743   ER52350      744 - 752  
      ER52354      753 - 761   ER52358      762 - 770   ER52360      771 - 779  
      ER52364      780 - 788   ER52368      789 - 797   ER52372      798 - 804  
      ER52376      805 - 811   ER52380      812 - 818   ER52384      819 - 825  
      ER52388      826 - 832   ER52390      833 - 841   ER52392      842 - 850  
      ER52394      851 - 859   ER34101      860 - 864   ER34102      865 - 866  
      ER34103      867 - 868  
using [path]\J219520.txt, clear 
;

destring, replace ;

label variable ER30000    "RELEASE NUMBER"                           ;
label variable ER30001    "1968 INTERVIEW NUMBER"                    ;
label variable ER30002    "PERSON NUMBER                         68" ;
label variable ER25001    "RELEASE NUMBER"                           ;
label variable ER25029    "A20 HOUSE VALUE"                          ;
label variable ER25042    "A24 REM PRINCIPAL MOR 1"                  ;
label variable ER25053    "A24 REM PRINCIPAL MOR 2"                  ;
label variable ER26535    "W2 PROFIT IF SOLD OTR REAL ESTATE"        ;
label variable ER26539    "W6 PROFIT IF SOLD VEHICLES"               ;
label variable ER26544    "W11 PROFIT IF SOLD BUSINESS/FARM"         ;
label variable ER26549    "W16 PROFIT IF SOLD NON-IRA STOCK"         ;
label variable ER26571    "W22 VALUE OF IRA/ANNUITY"                 ;
label variable ER26577    "W28 AMT ALL ACCOUNTS"                     ;
label variable ER26598    "W34 PROFIT IF SOLD BONDS/INSURANCE"       ;
label variable ER26603    "W39 VALUE ALL DEBTS"                      ;
label variable S703       "IMP VALUE FARM/BUS (W11) 05"              ;
label variable S705       "IMP VAL CHECKING/SAVING (W28) 05"         ;
label variable S707       "IMP VALUE OTH DEBT (W39) 05"              ;
label variable S709       "IMP VAL OTH REAL ESTATE (W2) 05"          ;
label variable S711       "IMP VALUE STOCKS (W16) 05"                ;
label variable S713       "IMP VALUE VEHICLES (W6) 05"               ;
label variable S715       "IMP VALUE OTH ASSETS (W34) 05"            ;
label variable S719       "IMP VALUE ANNUITY/IRA (W22) 05"           ;
label variable S720       "IMP VALUE HOME EQUITY 05"                 ;
label variable S716       "IMP WEALTH W/O EQUITY (WEALTH1) 05"       ;
label variable S717       "IMP WEALTH W/ EQUITY (WEALTH2) 05"        ;
label variable ER33801    "2005 INTERVIEW NUMBER"                    ;
label variable ER33802    "SEQUENCE NUMBER                       05" ;
label variable ER33803    "RELATION TO HEAD                      05" ;
label variable ER36001    "RELEASE NUMBER"                           ;
label variable ER36029    "A20 HOUSE VALUE"                          ;
label variable ER36042    "A24 REM PRINCIPAL MOR 1"                  ;
label variable ER36054    "A24 REM PRINCIPAL MOR 2"                  ;
label variable ER37553    "W2 PROFIT IF SOLD OTR REAL ESTATE"        ;
label variable ER37557    "W6 PROFIT IF SOLD VEHICLES"               ;
label variable ER37562    "W11 PROFIT IF SOLD BUSINESS/FARM"         ;
label variable ER37567    "W16 PROFIT IF SOLD NON-IRA STOCK"         ;
label variable ER37589    "W22 VALUE OF IRA/ANNUITY"                 ;
label variable ER37595    "W28 AMT ALL ACCOUNTS"                     ;
label variable ER37616    "W34 PROFIT IF SOLD BONDS/INSURANCE"       ;
label variable ER37621    "W39 VALUE ALL DEBTS"                      ;
label variable S803       "IMP VALUE FARM/BUS (W11) 07"              ;
label variable S805       "IMP VAL CHECKING/SAVING (W28) 07"         ;
label variable S807       "IMP VALUE OTH DEBT (W39) 07"              ;
label variable S809       "IMP VAL OTH REAL ESTATE (W2) 07"          ;
label variable S811       "IMP VALUE STOCKS (W16) 07"                ;
label variable S813       "IMP VALUE VEHICLES (W6) 07"               ;
label variable S815       "IMP VALUE OTH ASSETS (W34) 07"            ;
label variable S819       "IMP VALUE ANNUITY/IRA (W22) 07"           ;
label variable S820       "IMP VALUE HOME EQUITY 07"                 ;
label variable S816       "IMP WEALTH W/O EQUITY (WEALTH1) 07"       ;
label variable S817       "IMP WEALTH W/ EQUITY (WEALTH2) 07"        ;
label variable ER33901    "2007 INTERVIEW NUMBER"                    ;
label variable ER33902    "SEQUENCE NUMBER                       07" ;
label variable ER33903    "RELATION TO HEAD                      07" ;
label variable ER42001    "RELEASE NUMBER"                           ;
label variable ER42030    "A20 HOUSE VALUE"                          ;
label variable ER42043    "A24 REM PRINCIPAL MOR 1"                  ;
label variable ER42062    "A24 REM PRINCIPAL MOR 2"                  ;
label variable ER43544    "W2 PROFIT IF SOLD OTR REAL ESTATE"        ;
label variable ER43548    "W6 PROFIT IF SOLD VEHICLES"               ;
label variable ER43553    "W11 PROFIT IF SOLD BUSINESS/FARM"         ;
label variable ER43558    "W16 PROFIT IF SOLD NON-IRA STOCK"         ;
label variable ER43580    "W22 VALUE OF IRA/ANNUITY"                 ;
label variable ER43586    "W28 AMT ALL ACCOUNTS"                     ;
label variable ER43607    "W34 PROFIT IF SOLD BONDS/INSURANCE"       ;
label variable ER43612    "W39 VALUE ALL DEBTS"                      ;
label variable ER46938    "IMP VALUE FARM/BUS (W11) 09"              ;
label variable ER46942    "IMP VAL CHECKING/SAVING (W28) 09"         ;
label variable ER46946    "IMP VALUE OTH DEBT (W39) 09"              ;
label variable ER46950    "IMP VAL OTH REAL ESTATE (W2) 09"          ;
label variable ER46954    "IMP VALUE STOCKS (W16) 09"                ;
label variable ER46956    "IMP VALUE VEHICLES (W6) 09"               ;
label variable ER46960    "IMP VALUE OTH ASSETS (W34) 09"            ;
label variable ER46964    "IMP VALUE ANNUITY/IRA (W22) 09"           ;
label variable ER46966    "IMP VALUE HOME EQUITY 09"                 ;
label variable ER46968    "IMP WEALTH W/O EQUITY (WEALTH1) 09"       ;
label variable ER46970    "IMP WEALTH W/ EQUITY (WEALTH2) 09"        ;
label variable ER34001    "2009 INTERVIEW NUMBER"                    ;
label variable ER34002    "SEQUENCE NUMBER                       09" ;
label variable ER34003    "RELATION TO HEAD                      09" ;
label variable ER47301    "RELEASE NUMBER"                           ;
label variable ER47330    "A20 HOUSE VALUE"                          ;
label variable ER47348    "A24 REM PRINCIPAL MOR 1"                  ;
label variable ER47369    "A24 REM PRINCIPAL MOR 2"                  ;
label variable ER48869    "W2 PROFIT IF SOLD OTR REAL ESTATE"        ;
label variable ER48873    "W6 PROFIT IF SOLD VEHICLES"               ;
label variable ER48878    "W11 PROFIT IF SOLD BUSINESS/FARM"         ;
label variable ER48883    "W16 PROFIT IF SOLD NON-IRA STOCK"         ;
label variable ER48905    "W22 VALUE OF IRA/ANNUITY"                 ;
label variable ER48911    "W28 AMT ALL ACCOUNTS"                     ;
label variable ER48932    "W34 PROFIT IF SOLD BONDS/INSURANCE"       ;
label variable ER48937    "W39A AMOUNT OF CREDIT/STORE CARD DEBT"    ;
label variable ER48945    "W39B1 AMOUNT OF STUDENT LOANS"            ;
label variable ER48949    "W39B2 AMOUNT OF MEDICAL BILLS"            ;
label variable ER48953    "W39B3 AMOUNT OF LEGAL BILLS"              ;
label variable ER48957    "W39B4 AMOUNT OF LOANS FROM RELATIVES"     ;
label variable ER52346    "IMP VALUE FARM/BUS (W11) 11"              ;
label variable ER52350    "IMP VAL CHECKING/SAVING (W28) 11"         ;
label variable ER52354    "IMP VAL OTH REAL ESTATE (W2) 11"          ;
label variable ER52358    "IMP VALUE STOCKS (W16) 11"                ;
label variable ER52360    "IMP VALUE VEHICLES (W6) 11"               ;
label variable ER52364    "IMP VALUE OTH ASSETS (W34) 11"            ;
label variable ER52368    "IMP VALUE ANNUITY/IRA (W22) 11"           ;
label variable ER52372    "IMP VAL CREDIT CARD DEBT (W39A) 11"       ;
label variable ER52376    "IMP VAL STUDENT LOAN DEBT (W39B1) 11"     ;
label variable ER52380    "IMP VAL MEDICAL DEBT (W39B2) 11"          ;
label variable ER52384    "IMP VAL LEGAL DEBT (W39B3) 11"            ;
label variable ER52388    "IMP VAL FAMILY LOAN DEBT (W39B4) 11"      ;
label variable ER52390    "IMP VALUE HOME EQUITY 11"                 ;
label variable ER52392    "IMP WEALTH W/O EQUITY (WEALTH1) 11"       ;
label variable ER52394    "IMP WEALTH W/ EQUITY (WEALTH2) 11"        ;
label variable ER34101    "2011 INTERVIEW NUMBER"                    ;
label variable ER34102    "SEQUENCE NUMBER                       11" ;
label variable ER34103    "RELATION TO HEAD                      11" ;
