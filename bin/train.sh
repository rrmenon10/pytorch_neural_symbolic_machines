
bert_size=$1

OMP_NUM_THREADS=1 /opt/conda/envs/tabert/bin/python -m \
  table.experiments \
  train \
  seed 0 \
  --cuda \
  --work-dir=runs/bert_${bert_size} \
  --config=data/config/config.vanilla_bert_${bert_size}.json
