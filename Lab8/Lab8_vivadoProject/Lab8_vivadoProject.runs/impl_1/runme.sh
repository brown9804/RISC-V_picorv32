#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/Vivado/2020.1/ids_lite/ISE/bin/lin64:/opt/Vivado/2020.1/bin
else
  PATH=/opt/Vivado/2020.1/ids_lite/ISE/bin/lin64:/opt/Vivado/2020.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/bran/Documentos/Lab digitales/laboratorio-8-b-b-corp/Lab8_vivadoProject/Lab8_vivadoProject.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log system.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source system.tcl -notrace


