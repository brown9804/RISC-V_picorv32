#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Wed Dec 09 00:30:41 CST 2020
# SW Build 2902540 on Wed May 27 19:54:35 MDT 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim system_tb_behav -key {Behavioral:sim_1:Functional:system_tb} -tclbatch system_tb.tcl -view /home/bran/Documentos/Lab digitales/laboratorio-8-b-b-corp/Lab8_vivadoProject/system_tb_behav.wcfg -log simulate.log"
xsim system_tb_behav -key {Behavioral:sim_1:Functional:system_tb} -tclbatch system_tb.tcl -view /home/bran/Documentos/Lab digitales/laboratorio-8-b-b-corp/Lab8_vivadoProject/system_tb_behav.wcfg -log simulate.log

