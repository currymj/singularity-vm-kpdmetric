This repository is what I used to build a Singularity image in order to run KPDMetric with all its dependencies on HPC Clusters.

# Vagrantfile

If you are on a Linux system, you don't need to worry about the Vagrantfile. Singularity can only be run on Linux, so on macOS or Windows we need to set up a Linux VM to build the container in. This Vagrantfile does that. It expects the VMware provider, which is not free; you'll have to change that if you want to use VirtualBox.

# Singularity
This file gives the recipe to build the Singularity container. It requires a couple things:

- `singscript.sh` which does some python-related stuff (needs to be called from bash)
- you must download CPLEX for Linux and use the installer to install to the directory `./opt` in the same directory as this repository.
- you must build the driver code from KPDMetric as a jar and save it as Simulation1.jar -- easiest to do this once by hand in Eclipse by exporting an executable jar.
- you must have an internet connection as the build script will clone a github repository.
