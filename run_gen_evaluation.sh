#!/bin/bash
export LLM_API_KEY='your_actual_api_key_here'

python -m Evaluation.generation_eval \
  --mode API \
  --model gpt-4o-mini \
  --embedding_model BAAI/bge-large-en-v1.5 \
  --data_file outputs/g-reasoner/medical/predictions.jsonl \
  --output_file results/g-reasoner/medical/generation_evaluation_results.json \

python -m Evaluation.generation_eval \
  --mode API \
  --model gpt-4o-mini \
  --embedding_model BAAI/bge-large-en-v1.5 \
  --data_file outputs/g-reasoner/novel/predictions.jsonl \
  --output_file results/g-reasoner/novel/generation_evaluation_results.json \
