#!/bin/bash

cd gmx

## RUN GROMPP
if [ ! -f topol.tpr ]; then
echo "Running grompp"
gmx grompp -f imd.mdp -c start.gro -p topol.top -o >& grompp.out
fi
echo "Starting mdrun"

## START MDRUN
gmx mdrun -v -nt 1 -imdwait -imdport 8889
cd ..
