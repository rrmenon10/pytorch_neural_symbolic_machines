
## Installing miniconda on the machine first.
if [ ! -d $HOME/miniconda ] ; then
 wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
 bash ~/miniconda.sh -b -p $HOME/miniconda
 rm ~/miniconda.sh
 eval "$($HOME/miniconda/bin/conda shell.bash hook)"
 conda init
 source ~/.bashrc
 conda activate
fi

## Install the tabert environment
if [ ! -d $HOME/miniconda/envs/tabert ] ; then
    bash bin/setup_env.sh
    conda activate tabert
    pip install --editable .
    pip install gdown
    conda deactivate
    ## Install the nsm environment
    conda env update --name tabert --file data/env.yml
fi

## Download the directories
wget http://www.cs.cmu.edu/~pengchey/pytorch_nsm.zip
unzip -o pytorch_nsm.zip  # extract pre-processed dataset under the `data` directory.
rm pytorch_nsm.zip
