#### ANLI1 Dataset ####

#### Telugu Language ####
# Ground Truth Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/mt5-small --dataset anli1 --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language telugu --batch_size 32 > mt5_small_anli1_gt_palm_32_telugu.log

# LLM Generated Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/mt5-small --dataset anli1 --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language telugu --batch_size 32 > mt5_small_anli1_llm_palm_32_telugu.log

# Ground Truth Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/mt5-base --dataset anli1 --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language telugu --batch_size 16 > mt5_base_anli1_gt_palm_16_telugu.log

# LLM Generated Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/mt5-base --dataset anli1 --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language telugu --batch_size 16  > mt5_base_anli1_llm_palm_16_telugu.log

# Ground Truth Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/mt5-large --dataset anli1 --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language telugu --batch_size 4 > mt5_large_anli1_gt_palm_4_telugu.log

# LLM Generated Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/mt5-large --dataset anli1 --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language telugu --batch_size 4 > mt5_large_anli1_llm_palm_4_telugu.log


#### Hindi Language ####
# Ground Truth Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/mt5-small --dataset anli1 --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language hindi --batch_size 32 > mt5_small_anli1_gt_palm_32_hindi.log

# LLM Generated Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/mt5-small --dataset anli1 --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language hindi --batch_size 32 > mt5_small_anli1_llm_palm_32_hindi.log

# Ground Truth Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/mt5-base --dataset anli1 --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language hindi --batch_size 16 > mt5_base_anli1_gt_palm_16_hindi.log

# LLM Generated Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/mt5-base --dataset anli1 --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language hindi --batch_size 16  > mt5_base_anli1_llm_palm_16_hindi.log

# Ground Truth Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/mt5-large --dataset anli1 --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language hindi --batch_size 4 > mt5_large_anli1_gt_palm_4_hindi.log

# LLM Generated Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/mt5-large --dataset anli1 --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language hindi --batch_size 4 > mt5_large_anli1_llm_palm_4_hindi.log

#### ANLI1 Dataset End ###


#### CQA Dataset ####

#### Telugu Language ####
# Ground Truth Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/mt5-small --dataset cqa --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language telugu --batch_size 64 > mt5_small_cqa_gt_palm_64_telugu.log

# LLM Generated Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/mt5-small --dataset cqa --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language telugu --batch_size 64 > mt5_small_cqa_llm_palm_64_telugu.log

# Ground Truth Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/mt5-base --dataset cqa --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language telugu --batch_size 32 > mt5_base_cqa_gt_palm_32_telugu.log

# LLM Generated Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/mt5-base --dataset cqa --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language telugu --batch_size 32  > mt5_base_cqa_llm_palm_32_telugu.log

# Ground Truth Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/mt5-large --dataset cqa --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language telugu --batch_size 8 > mt5_large_cqa_gt_palm_8_telugu.log

# LLM Generated Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/mt5-large --dataset cqa --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language telugu --batch_size 8 > mt5_large_cqa_llm_palm_8_telugu.log

#### Hindi Language ####
# Ground Truth Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/mt5-small --dataset cqa --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language hindi --batch_size 64 > mt5_small_cqa_gt_palm_64_hindi.log

# LLM Generated Labels, With PaLM Rationals and T5_small model
python run.py --from_pretrained google/mt5-small --dataset cqa --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language hindi --batch_size 64 > mt5_small_cqa_llm_palm_64_hindi.log

# Ground Truth Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/mt5-base --dataset cqa --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language hindi --batch_size 32 > mt5_base_cqa_gt_palm_32_hindi.log

# LLM Generated Labels, With PaLM Rationals and T5_base model
python run.py --from_pretrained google/mt5-base --dataset cqa --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language hindi --batch_size 32  > mt5_base_cqa_llm_palm_32_hindi.log

# Ground Truth Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/mt5-large --dataset cqa --model_type task_prefix --label_type gt --llm palm --alpha 0.5 --language hindi --batch_size 8 > mt5_large_cqa_gt_palm_8_hindi.log

# LLM Generated Labels, With PaLM Rationals and T5_large model
python run.py --from_pretrained google/mt5-large --dataset cqa --model_type task_prefix --label_type llm --llm palm --alpha 0.5 --language hindi --batch_size 8 > mt5_large_cqa_llm_palm_8_hindi.log

#### CQA Dataset End ###
