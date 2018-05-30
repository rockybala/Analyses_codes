#!/bin/bash

model=Bstar ##Qstar
coupling=f1p0
#boxName=Excited1btagQuarks2016  ##ExcitedQuarks2016  ##Excited1btagQuarks201
boxName=Excited1btagQuarks2016_Excited0btagQuarks2016  ##for combined 0 and 1 tag category

#outdir=Cards_${model}_${coupling}_${boxName}_Significance/
outdir=Cards_${model}_${coupling}_${boxName}_LimitsFromData_LatestBinning/
#outdir=Cards_${model}_${coupling}_${boxName}_LimitsFromData/
#outdir=Cards_${model}_${coupling}_${boxName}_LimitsOnlyStats/
#outdir=Cards_${model}_${coupling}_${boxName}_LimitsOnlyBkgSyst/
#outdir=Cards_${model}_${coupling}_${boxName}_LimitsAllExceptBkg/

mMin=1.0 #1000  #5000 #1000
mMax=5.1 #5800 #6500 #6500 #5500 #6000

xMin=1e-6 #8e-5 #1e-5
xMax=1e-1 #3e-4 #1e-1 ##5e-4 ##1e-1

python python/Plot1DLimit_combined.py -d ${outdir} -m ${model} -b ${boxName} -l 35.866 --massMin ${mMin} --massMax ${mMax} --xsecMin ${xMin} --xsecMax ${xMax} --coup ${coupling} #--signif
