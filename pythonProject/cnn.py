import torch
import torch.nn as nn
import torchvision.datasets as dsets
import torchvision.transforms as transforms
import sys

sys.setrecursionlimit(10**6)

class CNN(torch.nn.Module):
    def __init__(self):
        super(CNN, self).__init__()
        self.layer1 = torch.nn.Sequential( # first: Conv2d, second: ReLU, thrid: MaxPool2d
            torch.nn.Conv2d(1, 32, kernel_size=3, stride=1, padding=1),
            torch.nn.ReLU(),
            torch.nn.MaxPool2d(kernel_size=2, stride=2))
        self.layer2 = torch.nn.Sequential(
            torch.nn.Conv2d(32, 64, kernel_size=3, stride=1, padding=1),
            torch.nn.ReLU(),
            torch.nn.MaxPool2d(kernel_size=2, stride=2))
        self.fc = torch.nn.Linear(7*7*64, 10, bias=True)
        torch.nn.init.xavier_uniform(self.fc.weight) # Weight Initialization

    def forward(self, x):
        out = self.layer1(x)
        out = self.layer2(out)
        out = out.view(out.size(0), -1)
        # .size(0): 1-dimension but no elements
        # view(-1) operation flattens the tensor, if it wasn't already flattened
        out = self.fc(out)
        return out

class DeepCNN(torch.nn.Module):
    def __init__(self):
        super(DeepCNN, self).__init__()
        self.keep_prob = 0.5
        self.layer1 = torch.nn.Sequential( # first: Conv2d, second: ReLU, thrid: MaxPool2d
            torch.nn.Conv2d(1, 32, kernel_size=3, stride=1, padding=1),
            torch.nn.ReLU(),
            torch.nn.MaxPool2d(kernel_size=2, stride=2))
        self.layer2 = torch.nn.Sequential(  # first: Conv2d, second: ReLU, thrid: MaxPool2d
            torch.nn.Conv2d(32, 128, kernel_size=3, stride=1, padding=1),
            torch.nn.ReLU(),
            torch.nn.MaxPool2d(kernel_size=2, stride=2))
        self.layer3 = torch.nn.Sequential(
            torch.nn.Conv2d(128, 512, kernel_size=3, stride=1, padding=1),
            torch.nn.ReLU(),
            torch.nn.MaxPool2d(kernel_size=2, stride=2))
        self.layer4 = torch.nn.Sequential(
            torch.nn.Conv2d(512, 2048, kernel_size=3, stride=1, padding=1),
            torch.nn.ReLU(),
            torch.nn.MaxPool2d(kernel_size=2, stride=2, padding=1))
        self.fc1 = torch.nn.Linear(2 * 2 * 2048, 625, bias = True)
        torch.nn.init.xavier_uniform_(self.fc1.weight)
        self.layer5 = torch.nn.Sequential(
            self.fc1,
            torch.nn.ReLU(),
            torch.nn.Dropout(p = 1 - self.keep_prob))
        self.fc2 = torch.nn.Linear(625, 10, bias=True)
        torch.nn.init.xavier_uniform_(self.fc2.weight) # Weight Initialization

    def forward(self, x):
        out = self.layer1(x)
        out = self.layer2(out)
        out = self.layer3(out)
        out = self.layer4(out)
        out = out.view(out.size(0), -1)
        out = self.layer5(out)
        out = self.fc2(out)
        return out

# class Conv2d(_ConvNd):
# Args:
# padding_mode (string, optional): ``'zeros'``, ``'reflect'``, ``'replicate'`` or ``'circular'``. Default: ``'zeros'``
# dilation (int or tuple, optional): Spacing between kernel elements. Default: 1 groups (int, optional): Number of blocked connections from input
# channels to output channels. Default: 1
# bias (bool, optional): If ``True``, adds a learnable bias to the
# output. Default: ``True`` """.format(**reproducibility_notes, **convolution_notes) + r"""
# in_channels (int): Number of channels in the input image
# out_channels (int): Number of channels produced by the convolution kernel_size (int or tuple): Size of the convolving kernel
# stride (int or tuple, optional): Stride of the convolution. Default: 1 padding (int or tuple, optional): Zero-padding added to both sides of
# the input. Default: 0
# Shape:
# - Input: :math:`(N, C_{in}, H_{in}, W_{in})`
# - Output: :math:`(N, C_{out}, H_{out}, W_{out})` where

# class MaxPool2d(_MaxPoolNd): Args:
# dilation: a parameter that controls the stride of elements in the window return_indices: if ``True``, will return the max indices along with the outputs.
# Useful for :class:`torch.nn.MaxUnpool2d` later
# ceil_mode: when True, will use `ceil` instead of `floor` to compute the output shape
# kernel_size: the size of the window to take a max over
# stride: the stride of the window. Default value is :attr:`kernel_size` padding: implicit zero padding to be added on both sides
# Shape:
# - Input: :math:`(N, C, H_{in}, W_{in})`
# - Output: :math:`(N, C, H_{out}, W_{out})`, where

def testConv2d():
    input = torch.randn(20, 16, 50, 100)
    m = nn.Conv2d(16, 33, (3, 5), stride = (2, 1), padding = (4, 2))
    output = m(input)

    print(output.size())

def testMaxPool2d():
    input = torch.randn(20, 16, 50, 32)
    m = nn.MaxPool2d((3, 2), stride = (2, 1))
    output = m(input)

    print(output.size())

def TestCNN():
    device = 'cuda' if torch.cuda.is_available() else 'cpu'

    torch.manual_seed(777)

    if device == 'cuda':
        torch.cuda.manual_seed_all(777)

    learning_rate = 0.001
    training_epochs = 15
    batch_size = 100

    mnist_train = dsets.MNIST(root='MNIST_data/', train=True,
                              transform=transforms.ToTensor(), download=True)
    mnist_test = dsets.MNIST(root='MNIST_data/', train=False,
                             transform=transforms.ToTensor(), download=True)
    data_loader = torch.utils.data.DataLoader(dataset=mnist_train, batch_size=batch_size,
                                              shuffle=True, drop_last=True)

    model = CNN().to(device)
    criterion = torch.nn.CrossEntropyLoss().to(device) # Softmax function is included in Cost function
    optimizer = torch.optim.Adam(model.parameters(), lr = learning_rate)
    total_batch = len(data_loader)
    print('# of total batch: {}' .format(total_batch))

    for epoch in range(training_epochs):
        avg_cost = 0

        for X, Y in data_loader:
            X = X.to(device)
            Y = Y.to(device)

            optimizer.zero_grad()
            hypothesis = model(X)
            cost = criterion(hypothesis, Y)
            cost.backward()
            optimizer.step()

            avg_cost += cost / total_batch

        print('[Epoch: {:>4}] cost = {:>.9}'.format(epoch + 1, avg_cost))

    with torch.no_grad():
        X_test = mnist_test.test_data.view(len(mnist_test), 1, 28, 28).float().to(device)
        Y_test = mnist_test.test_labels.to(device)
        prediction = model(X_test)
        correct_prediction = torch.argmax(prediction, 1) == Y_test
        accuracy = correct_prediction.float().mean()
        print('Accuracy:', accuracy.item())

def TestDeepCNN():
    # device = 'cuda' if torch.cuda.is_available() else 'cpu'

    # torch.manual_seed(777)

    # if device == 'cuda':
    #     torch.cuda.manual_seed_all(777)
        
    torch.autograd.set_detect_anomaly(True)
    
    if torch.cuda.is_available():
        print("GPU is available")
        device = torch.device("cuda:1")
    else:
        device = torch.device("cpu")

    learning_rate = 0.001
    training_epochs = 15
    batch_size = 100

    mnist_train = dsets.MNIST(root='MNIST_data/', train=True,
                              transform=transforms.ToTensor(), download=True)
    mnist_test = dsets.MNIST(root='MNIST_data/', train=False,
                             transform=transforms.ToTensor(), download=True)
    data_loader = torch.utils.data.DataLoader(dataset=mnist_train, batch_size=batch_size,
                                              shuffle=True, drop_last=True)

    model = DeepCNN().to(device)
    criterion = torch.nn.CrossEntropyLoss().to(device) # Softmax function is included in Cost function
    optimizer = torch.optim.Adam(model.parameters(), lr = learning_rate)
    total_batch = len(data_loader)
    print('# of total batch: {}' .format(total_batch))

    for epoch in range(training_epochs):
        avg_cost = 0

        for X, Y in data_loader:
            X = X.to(device)
            Y = Y.to(device)

            optimizer.zero_grad()
            hypothesis = model(X)
            cost = criterion(hypothesis, Y)
            cost.backward()
            optimizer.step()

            avg_cost += cost / total_batch

        print('[Epoch: {:>4}] cost = {:>.9}'.format(epoch + 1, avg_cost))

    with torch.no_grad():
        X_test = mnist_test.test_data.view(len(mnist_test), 1, 28, 28).float().to(device)
        Y_test = mnist_test.test_labels.to(device)
        prediction = model(X_test)
        correct_prediction = torch.argmax(prediction, 1) == Y_test
        accuracy = correct_prediction.float().mean()
        print('Accuracy:', accuracy.item())

def main():
    # testConv2d()
    # testMaxPool2d()
    # TestCNN()
    TestDeepCNN()

if __name__ == "__main__":
    main()