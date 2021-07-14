bash bin/setup_env.sh
/opt/conda/bin/conda activate tabert
pip install --editable .
/opt/conda/bin/conda deactivate

## Install the nsm environment
/opt/conda/bin/conda env update --name tabert --file data/env.yml

## Download the directories
wget http://www.cs.cmu.edu/~pengchey/pytorch_nsm.zip
unzip -o pytorch_nsm.zip  # extract pre-processed dataset under the `data` directory.
rm pytorch_nsm.zip
