## Installing miniconda on the machine first.
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p
rm ~/miniconda.sh
conda init
source ~/.bashrc
conda activate

## Install the tabert environment
bash bin/setup_env.sh
conda activate tabert
pip install --editable .
pip install gdown
conda deactivate

## Install the nsm environment
conda env update --name tabert --file data/env.yml

## Download the directories
wget http://www.cs.cmu.edu/~pengchey/pytorch_nsm.zip
unzip pytorch_nsm.zip    # extract pre-processed dataset under the `data` directory.
rm pytorch_nsm.zip
