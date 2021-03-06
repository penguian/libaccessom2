#!/bin/bash

module purge
module load cmake/3.6.2
module load netcdf/4.3.2
module load intel-fc/17.0.1.132
module load openmpi/1.10.2

MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Args: platform and whether Cmake should search for NetCDF libraries
source $MYDIR/build.sh nci OFF
