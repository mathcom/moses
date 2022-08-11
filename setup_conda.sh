#!/bin/bash

# Step1. create conda-env using environment.yml
conda env create -f environment.yml
conda activate moses

# Step2. install and activate git-lfs
# curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
# sudo apt install git-lfs
git lfs install

# Step3. install moses using pip
pip install git+https://github.com/mathcom/moses

# Step4. install molvecgen using pip
pip install git+https://github.com/EBjerrum/molvecgen

# Step5. install Deep-Drug-Coder manually
git clone https://github.com/pcko1/Deep-Drug-Coder.git --branch moses
cd Deep-Drug-Coder
python setup.py install
cd ..