import pandas as pd
import numpy as np
# import math

# format long?

minimizeObjFuncInd = 0; # Actually I don't get it this part.

dataOrig = pd.read_excel('cssussavingdata_selection_20110831.xls')
time = dataOrig.t
saving_rate = dataOrig.saving_rate
wyRat = dataOrig.wyRat
CEA = dataOrig.CEA
unemp_pred = dataOrig.unemp_pred

wyRatSeries = wyRat[24:203];
mhoSeries=unemp_pred[25:204]/100;
CEAseries=CEA[25:204];
time=time[25:204];
thetaBase=0.05;

## Need to reset index to merge 
wyRatSeries = wyRatSeries.reset_index()
mhoSeries = mhoSeries.reset_index()
CEAseries = CEAseries.reset_index()
saving_rate = saving_rate.reset_index()

# merge mhoSeries CEAseries and saving_rate
mhoSeries = mhoSeries.merge(CEAseries)
mhoSeries = mhoSeries.merge(saving_rate)

wyRatSeries = wyRatSeries.wyRat # delete current index
wyRatSeries = wyRatSeries.reset_index() # New index starting at 0
mhoSeries = mhoSeries[['unemp_pred','CEA','saving_rate']] # delete current index
mhoSeries = mhoSeries.reset_index() # New index starting at 0

# Merge wyRatSeries and the rest 
data = wyRatSeries.merge(mhoSeries) 
data = data[['wyRat','unemp_pred','CEA','saving_rate']] # delete index column

# rename labels
data.columns = 'wyRatSeries','mhoSeries','CEAseries','saving_rate'


cExAll=[]; cEyAll=[]; mcPathAll=[]; scriptmEBaseAll=[]; steadyStateMC=[]; PiAll=[];

# Consider the case minimizeObjFuncInd = 0

parametersM1=np.array([0.000063217933389, 0.000260785069995, 0.875122279496263, 5.250441493574298, 0.006389908011468])
parametersM1.shape=(5,1)

# need to call minCdist_outputSeries function
run minCdist_outputSeries

[cRescaled_est,actualC,mhoRescaled_est,debtLimPDVrescaled_est,cRescaledFull_est,mRescaledFull_est] = minCdist_outputSeries(parametersM1, data);
mhoRescaled_mean=mhoRescaled_est.mean();
ceaRescaled_mean=debtLimPDVrescaled_est.mean();
CEAmean=CEAseries.mean();
UnempMean=mhoSeries.mean();

# It is working?
def good():
  pass

