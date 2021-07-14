bash bin/setup_env.sh
/opt/conda/bin/conda init
source ~/.bashrc

## Install the nsm environment
conda env update --name tabert --file data/env.yml
conda deactivate

## Download the directories
wget http://www.cs.cmu.edu/~pengchey/pytorch_nsm.zip
unzip -o pytorch_nsm.zip  # extract pre-processed dataset under the `data` directory.
rm pytorch_nsm.zip
