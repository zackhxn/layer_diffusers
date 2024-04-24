from datasets import load_dataset
# dataset = load_dataset(
#             '/gpfsdata/home/zhangchenkai/download/ADEcolor'
# )
dataset = load_dataset(
            '/gpfsdata/home/zhangchenkai/download/ADEgray'
)
column_names = dataset["train"].column_names
print("column_names",column_names)