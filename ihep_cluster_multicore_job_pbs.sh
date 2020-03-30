#!/bin/bash
#
# """""""""""""""""""""""""""""""""""""""""""""""
 # Description: How to run GATE simulation for JD-PET?
 # Editor:Bo Ma
 # date:2020-03-30
 # Email:mabo@ihep.ac.cn
 # Tel:010-88235869
 # Cell:15210606357
# """"""""""""""""""""""""""""""""""""""""""""""""
# relative path whith is really ridiculous.

# The path for single job submition.
#Note: you have to have the single job script which will save you a lot of time.
PATH_GATE_MACRO="/data/simulation/home/mabo/software/src/gate/ihep_human_tof_pet_jd/"

#set the cpu cores you want to use.
CPU_NUM=3

i=1
while(( ${i}<=$CPU_NUM ))
do
    RUN_NUMBER="${i}"
    sleep 2s
    
    #Submit your job with qsub, you can pass varialbes to your script.
    #NOTE: the varialbles can not be path, maybe I miss it.
    qsub -v RUN_NUMBER=$RUN_NUMBER $PATH_GATE_MACRO"/ihep_cluster_singlecore_job_pbs.sh"
    let i++
done

