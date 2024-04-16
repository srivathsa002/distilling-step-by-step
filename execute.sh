#### e-SNLI Dataset ####

# Ground Truth Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/t5-v1_1-small --dataset esnli --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --batch_size 64 > t5_small_esnli_gt_palm_64.log

# LLM Generated Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/t5-v1_1-small --dataset esnli --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --batch_size 64 > t5_small_esnli_llm_palm_64.log

# Ground Truth Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/t5-v1_1-base --dataset esnli --model_type task_prefix --label_type gt --llm palm --batch_size 64 > t5_base_esnli_gt_palm_64.log

# LLM Generated Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/t5-v1_1-base --dataset esnli --model_type task_prefix --label_type llm --llm palm --batch_size 64 > t5_base_esnli_llm_palm_64.log

# Ground Truth Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/t5-v1_1-large --dataset esnli --model_type task_prefix --label_type gt --llm palm --batch_size 16 > t5_large_esnli_gt_palm_16.log

# LLM Generated Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/t5-v1_1-large --dataset esnli --model_type task_prefix --label_type llm --llm palm --batch_size 16 > t5_large_esnli_llm_palm_16.log

#### e-SNLI Dataset End ###

#### ANLI1 Dataset ####

# Ground Truth Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/t5-v1_1-small --dataset anli1 --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --batch_size 64 > t5_small_anli1_gt_palm_64.log

# LLM Generated Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/t5-v1_1-small --dataset anli1 --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --batch_size 64 > t5_small_anli1_llm_palm_64.log

# Ground Truth Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/t5-v1_1-base --dataset anli1 --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --batch_size 32 > t5_base_anli1_gt_palm_32.log

# LLM Generated Labels, With PaLM Rationals and T5_base model
 python run.py --from_pretrained google/t5-v1_1-base --dataset anli1 --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --batch_size 32  > t5_base_anli1_llm_palm_32.log

# Ground Truth Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/t5-v1_1-large --dataset anli1 --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --batch_size 8 > t5_large_anli1_gt_palm_8.log

# LLM Generated Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/t5-v1_1-large --dataset anli1 --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --batch_size 8 > t5_large_anli1_llm_palm_8.log

#### ANLI1 Dataset End ###

#### CQA Dataset ####

# Ground Truth Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/t5-v1_1-small --dataset cqa --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --batch_size 64 > t5_small_cqa_gt_palm_64.log

# LLM Generated Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/t5-v1_1-small --dataset cqa --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --batch_size 64 > t5_small_cqa_llm_palm_64.log

# Ground Truth Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/t5-v1_1-base --dataset cqa --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --batch_size 64 > t5_base_cqa_gt_palm_64.log

# LLM Generated Labels, With PaLM Rationals and T5_base model
 python run.py --from_pretrained google/t5-v1_1-base --dataset cqa --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --batch_size 64  > t5_base_cqa_llm_palm_64.log

# Ground Truth Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/t5-v1_1-large --dataset cqa --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --batch_size 16 > t5_large_cqa_gt_palm_16.log

# LLM Generated Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/t5-v1_1-large --dataset cqa --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --batch_size 16 > t5_large_cqa_llm_palm_16.log

#### CQA Dataset End ###
