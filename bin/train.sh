
bert_size=$1

OMP_NUM_THREADS=1 python -m \
  table.experiments \
  train \
  --work-dir=runs/bert_${bert_size} \
  --config=data/config/config.vanilla_bert_${bert_size}.json \
  --seed=0 \
  --cuda
