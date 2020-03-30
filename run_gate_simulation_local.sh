#!/bin/bash
# 
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

# PATH of your scripts.
#this parameters is also used inside the GATE main macros. 
#note: you have to use the absolute path in your GATE macros.So pass this parameter.
PATH_GATE_MACRO="./"
GATE_MAIN_MACRO="main_human_jdpet_tof_multi_cpu.mac"
PATH_GATE_MAIN_MACRO=$PATH_GATE_MACRO$GATE_MAIN_MACRO
#LOG name 
RUN_LOG_PART=$PATH_GATE_MACRO"results/GATE_log"

#the output name of your simulation.Also, mustbe absolute path.
OUTPUT_NAME_PART="results/human_jdpet_tof_"

#Time resolution for TOF which is also a variable in the digitizer.mac.
TIME_RES=30
GAMMA_NUM=1000000

CPU_NUM=3

#for((index=0;index<2;index++))
for((index=0;index<$CPU_NUM ;index++))
  {
    echo $index

    RUN_NUMBER=$index
    RUN_LOG=$RUN_LOG_PART"_"$TIME_RES"_ps"$RUN_NUMBER
    OUTPUT_NAME=$PATH_GATE_MACRO$OUTPUT_NAME_PART$TIME_RES"ps_"$RUN_NUMBER

    Gate -a [RUN_NUMBER,$RUN_NUMBER][TOF,$TIME_RES][PATH_GATE_MACRO,$PATH_GATE_MACRO][OUTPUT_NAME,$OUTPUT_NAME][GAMMA_NUM,$GAMMA_NUM]  $PATH_GATE_MAIN_MACRO >>$RUN_LOG &
    sleep 1

  }

  #wait

  
#duration=$SECONDS

#echo "total time is: "$duration

