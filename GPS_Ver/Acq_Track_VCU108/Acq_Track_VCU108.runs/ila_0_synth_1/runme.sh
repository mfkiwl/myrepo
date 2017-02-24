#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/Scratch/Softwares/Vivado/SDK/2016.1/bin:/Scratch/Softwares/Vivado/Vivado/2016.1/ids_lite/ISE/bin/lin64:/Scratch/Softwares/Vivado/Vivado/2016.1/bin
else
  PATH=/Scratch/Softwares/Vivado/SDK/2016.1/bin:/Scratch/Softwares/Vivado/Vivado/2016.1/ids_lite/ISE/bin/lin64:/Scratch/Softwares/Vivado/Vivado/2016.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/Scratch/Softwares/Vivado/Vivado/2016.1/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/Scratch/Softwares/Vivado/Vivado/2016.1/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/Scratch/vish/Zaid/gps/GPS_Ver/Acq_Track_VCU108/Acq_Track_VCU108.runs/ila_0_synth_1'
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

EAStep vivado -log ila_0.vds -m64 -mode batch -messageDb vivado.pb -notrace -source ila_0.tcl
