#!/bin/bash

############################################################################################
# START OF MANUAL CONFIGURATION. 
# ADAPT THE TEMPLATE HERE.
############################################################################################

#########################################################
# 1. GITHUB CLONING OF REPO
# Clone the repository of your tool and checkout to one specific commit. 
#########################################################

git clone https://github.com/vodor001/test_linear_regression.py.git /odtp/odtp-workdir/test_linear_regression
cd /odtp/odtp-workdir/test_linear_regression
git checkout v0.1.0

#########################################################
# 2. CONFIG FILE CONFIGURATION
# Read placeholders and create config file from Environment  
#########################################################

# python3 /odtp/odtp-component-client/parameters.py /odtp/odtp-app/config_templates/template.yml /odtp/odtp-workdir/config.yml

#########################################################
# 3. INPUT FOLDER MANAGEMENT
#########################################################

ln -s /odtp/odtp-input/test_linear_regression/data /odtp/odtp-workdir/test_linear_regression/data

#########################################################
# 4. TOOL EXECUTION
# While the output is managed by ODTP and placed in /odtp/odtp-output/
#########################################################

# COMMAND $PARAMETER_A #PARAMETER_B /odtp/odtp-input/data
python linear_regression.py /../../odtp-input/linear_regression/data
#########################################################
# 5. OUTPUT FOLDER MANAGEMENT
# The selected output files generated should be placed in the output folder
#########################################################

cp -r /odtp/odtp-workdir/output/* /odtp/odtp-output/test_linear_regression/data

############################################################################################
# END OF MANUAL USER APP
############################################################################################
