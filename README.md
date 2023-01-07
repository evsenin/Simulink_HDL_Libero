# Simulink_HDL_Libero
open one of tb_ models in Simulink

open App HDL CODE

run Workflow Advisor

Check Allow unsupported versions

run all items throw advisor ste3p by step

resolve unclear or error items as you need

edit generated tcl file as you need (usually I for import in Libero a small changes remove all rows except import_files)

for new core in new Libero project fix following: 

Edit generated tcl:
1. sd_replace_component -sd_name Libero_sd -instance_name {SYSTEM_ip_0} -new_component_name ...
2. remove all Libero_sd and open project rows
3. Left ONLY import_files and hdl_core rows
4. run tcl inside existing Libero project
5. Details see in Libero_HDL_simulink repo
