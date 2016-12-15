This is a tutorial for how to construct a panel data. You will create home value data from 2005 to 2007.
Only for Stata users.

Log in: http://psidonline.isr.umich.edu/

The first step is to create the individual unique identifier (pid). You need two variables, 1968 ID and Person Number 68.
(More detail descrption see the question 9: http://psidonline.isr.umich.edu/Guide/FAQ.aspx)

The variable codes are ER30001 and ER30002 so from the start page
  1. Click DATA tab -> Data Center -> Variable List 
You can see the box called 'Variable List'. 
  2. Type ER30001 ER30002 and click 'Add Variables'
Now your data set contains two variables with Release number. Later, we wil construct pid after add housing variables.



The variable of our interest is how much individual's housing wealth during the recession period.
The best (but time consuming) way to find the relevant question is to read all questionnaire
  1. Click DOCUMENTATION tab -> Questionnaires & supporting documentation -> 2000s -> 2005 or 2007 -> Codebook

Easier way is to use search box.
  2. Click DATA tab -> Data Center -> Search
  3. Check 'PSID Family-level' and 'PSID Individual-level' in Data type
  4. Click 2005 and 2007
However, if you did not know what to type or did search general words such as 'home', the result shows you irrelevant data entry.

* I summarized all relevant questions for consumer finance and expenditures in different directory. 

If you know the question number, the search box is really useful. The home value question is A20, and mortgages are A24. 
  5. In the search box, type A20
  6. Check the box for Label 'A20 HOUSE VALUE' and click 'Add to Cart' for year 2005 and 2007
  7. In the search box, type A21    
  8. Check the box for Label 'A20 HOUSE VALUE' and click 'Add to Cart'
  9. Check the box for Label 'A24 REM PRINCIPAL MOR1' and 'A24 REM PRINCIPAL MOR2,' and click 'Add to Cart' for year 2005 and 2007
  10. Click 'Variables added to your cart.' 
  11. Click 'Checkout'
  12. Click 'ASCII Data With Stata Statements' and check 'Create compressed file (.zip format) for faster downloading'
  13. Click 'Submit' at the bottom
