bert_config=$1
gsutil -m -o GSUtil:parallel_composite_upload_threshold=150M cp -r runs/bert_${bert_config} gs://inverse-semantics/bert_${bert_config}
