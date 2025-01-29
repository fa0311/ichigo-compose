from transformers import AutoModelForCausalLM, AutoTokenizer, TextStreamer
import torch

modelname = "cyberagent/DeepSeek-R1-Distill-Qwen-14B-Japanese"
# modelname = "cyberagent/DeepSeek-R1-Distill-Qwen-32B-Japanese"

model = AutoModelForCausalLM.from_pretrained(modelname, device_map="auto", torch_dtype="auto")
tokenizer = AutoTokenizer.from_pretrained(modelname)
streamer = TextStreamer(tokenizer, skip_prompt=True, skip_special_tokens=True)

messages = [
    {"role": "user", "content": "AIについて教えて"},
]

input_ids = tokenizer.apply_chat_template(messages, add_generation_prompt=True, return_tensors="pt").to(model.device)
output_ids = model.generate(input_ids,
                            max_new_tokens=4096,
                            temperature=0.7,
                            streamer=streamer)
