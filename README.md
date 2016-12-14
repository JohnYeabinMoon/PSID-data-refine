This repository contains relevant codes and instructions for how to create the PSID panel data. 

PSID webpage: http://psidonline.isr.umich.edu/

Admittedly massive amount of economics research (other relevant literature as well) use the PSID, but I found that there is little intro level explanation on the usage. More surprisingly, there is no unified rule on how to lump the categories such as consumption. 

This is quite irritating. Most research paper using the PSID data put some summary statistics such as median consumption (or wealth) in 2007. You would find that no paper result ever matched for those values (margins are not that big).    

PSID do provide tutorials but the explanation about employing panel dimension is relatively weak. And research paper did not express detailed questions they use. The goal of this repository is to solve this problem.

If you used the Stata but did not know how to construct panel data, this repository would be useful for you. Or, if you want to collect consumer finance data, this repository teaches you how to select variables. No serious Stata skills are required, but at least you'd know how to change your working directories.

Examples contain consumption, wealth, income, and some demographic variables. You can extend/modify your panel data on your own after following some steps.

PSID data is based on questionnaire, and the questions vary year to year. 

Each sub folder contains raw-data folder. You can see what questions I used to construct.

Let’s start with Wealth data so go to Wealth folder. 

