/opt/conda/bin/conda init bash
source ~/.bashrc
git clone https://github.com/facebookresearch/TaBERT.git
cd TaBERT
source scripts/setup_env.sh
conda activate tabert
pip install torch==1.8.1
pip install --no-index torch-scatter -f https://pytorch-geometric.com/whl/torch-1.8.1+cu102.html
pip install --editable .
cd ..
conda env update --name tabert --file data/env.yml
conda deactivate

## Download the directories
wget http://www.cs.cmu.edu/~pengchey/pytorch_nsm.zip
unzip -o pytorch_nsm.zip  # extract pre-processed dataset under the `data` directory.
rm pytorch_nsm.zip
