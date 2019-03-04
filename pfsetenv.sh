#!/bin/bash
# LLNS Copyright Start
# Copyright (c) 2017, Lawrence Livermore National Security
# This work was performed under the auspices of the U.S. Department 
# of Energy by Lawrence Livermore National Laboratory in part under 
# Contract W-7405-Eng-48 and in part under Contract DE-AC52-07NA27344.
# Produced at the Lawrence Livermore National Laboratory.
# All rights reserved.
# For details, see the LICENSE file.
# LLNS Copyright End

#############################################################################
# Setup PF environment
#############################################################################
#
# Sets up the Parflow build environment for frequently used machines.
#
# If PARFLOW_DIR is set prior to sourcing this script will use user specified location
# for install.  Defauts to current ../install if not specified.


# Make sure this file is sourced not executed since this sets environment variables
if [[ ! "${BASH_SOURCE[0]}" != "${0}" ]] 
then
   echo "${0} should be sourced, not executed: source ${0}"
fi

# Appends to path if not path not already present
function appendToPath {
   echo $PATH | grep -q $1
   if [ $? -ne 0 ]
   then
      PATH=${PATH}:${1}
   fi
}

function prependToPath {
   echo $PATH | grep -q $1
   if [ $? -ne 0 ]
   then
      PATH=${1}:${PATH}
   fi
}

function appendToLdPath {

   if [[ -z ${LD_LIBRARY_PATH+x} ]]
   then
      export LD_LIBRARY_PATH=${1}
   else
      echo $LD_LIBRARY_PATH | grep -q $1
      if [ $? -ne 0 ]
      then
	 export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${1}
      fi
   fi
}


#=============================================================================
# Machine specific configuration 
#=============================================================================
case $(hostname) in

   cori*)
      . ~/m2511/parflow/cori-10layer-691933-2019-02-26/setenv.sh
      ;;
esac
