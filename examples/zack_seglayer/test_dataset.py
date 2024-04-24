import datasets
from datasets import load_dataset


dataset = load_dataset(path="imagefolder",data_dir="/gpfsdata/home/zhangchenkai/download/ADEChallengeData2016")
# 直接这样也是可以的
#dataset = load_dataset("imagefolder",
                       #data_dir="test_huggingface")
print(dataset)
print(dataset['train'])
print('第一个数据:', dataset['train'][0])
# image = dataset['train'][0]['image']
# text = dataset['train'][0]['text']
# class_id = dataset['train'][0]['class']

# print('image:', image)
# print('text:', text)
# print('class:', class_id)
# print('数据集长度:', len(dataset['train']))
# image.save('res.png')
