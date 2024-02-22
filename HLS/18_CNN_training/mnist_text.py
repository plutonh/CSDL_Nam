import torch
import torchvision # Using torchvision, we can eaily download MNIST dataset
import torchvision.transforms as transforms # To transform MNIST "images" to "tensor"
import os

train_data = torchvision.datasets.MNIST(root='./datasets', # 저장되는 위치
                                       train=True,
                                        transform=transforms.ToTensor(),
                                        download=True)
test_data = torchvision.datasets.MNIST(root='./datasets',
                                       train=False,
                                       transform=transforms.ToTensor())

def save_to_text_files(data, folder_name):
    # Create directories if they don't exist
    img_folder = os.path.join(folder_name, 'images')
    label_folder = os.path.join(folder_name, 'labels')
    os.makedirs(img_folder, exist_ok=True)
    os.makedirs(label_folder, exist_ok=True)

    # Iterate through the dataset and save each image and label
    for idx, (image, label) in enumerate(data):
        # Define file paths
        img_filename = f'{img_folder}/image_{idx}.txt'
        label_filename = f'{label_folder}/label_{idx}.txt'

        # Save the image
        image_data = image.numpy().flatten()
        with open(img_filename, 'w') as img_file:
            img_file.write(' '.join(map(str, image_data)))

        # Save the label
        with open(label_filename, 'w') as label_file:
            label_file.write(str(label))

# Save train and test datasets to separate text files
save_to_text_files(train_data, './train')
save_to_text_files(test_data, './test')
