Open up J219520.pdf located in ‘Raw-File’ subfolder. This PDF file shows you what variables I used to construct the wealth data. Here I used 2005, 2007, 2009, and 2011 data entry. 

See the variable index. 1986 index is used to construct unique identifier, which is the essential for creating a panel. So every time you want to construct data panel or add some variables into the existing panel, you must put two variables first: ER30001 and ER30002. 

Official documentation: http://psidonline.isr.umich.edu/Guide/FAQ.aspx
Check the question 9. (But I put the codes the following do file)

I collect every relevant wealth question from 2005 to 2011. Just skim it. It contains liquid/illiquid assets and some debt components. I put both actual and imputed variables to compare. For example, in 2005, there are A20 HOUSE VALUE and IMP VALUE HOME EQUITY 05. Imputed housing value is net house value, which is A20 – A24 (A24 REM PRINCIPAL MOR 1 + A24 REM PRINCIPAL MOR 2). The imputed values and actual calculated values are almost similar. But the PSID provides imputed values for missing (or idiosyncratic) values. Most literature did not use imputed values, however. 



