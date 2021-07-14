/opt/conda/bin/conda init bash
source ~/.bashrc
git clone https://github.com/facebookresearch/TaBERT.git
cd TaBERT
bash scripts/setup_env.sh
conda activate tabert
pip install --editable .
conda env update --name tabert --file data/env.yml
conda deactivate

## Download the directories
wget http://www.cs.cmu.edu/~pengchey/pytorch_nsm.zip
unzip -o pytorch_nsm.zip  # extract pre-processed dataset under the `data` directory.
rm pytorch_nsm.zip
