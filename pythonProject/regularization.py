import torch
import torchvision.datasets as dsets
import torchvision.transforms as transforms
import torch.nn.init
import matplotlib.pyplot as plt
import torch.nn as nn
import torch.optim as optim

class DNN(torch.nn.Module):
    def __init__(self):
        super(DNN, self).__init__()
        self.fc1 = nn.Linear(784, 512)
        self.fc2 = nn.Linear(512, 256)
        self.fc3 = nn.Linear(256, 10)

        self.relu = nn.ReLU()

    def forward(self, x):
        out = self.relu(self.fc1(x.view(-1, 784)))
        out = self.relu(self.fc2(out))
        out = self.fc3(out)
        return out

class dropDNN(torch.nn.Module):
    def __init__(self):
        super(dropDNN, self).__init__() # 부모 class인 torch.nn.Module의 __init__() 메소드를 실행
        self.fc1 = nn.Linear(784, 512)
        self.fc2 = nn.Linear(512, 256)
        self.fc3 = nn.Linear(256, 10)

        self.relu = nn.ReLU()
        self.dropout = nn.Dropout(p = 0.3)

    def forward(self, x):
        out = self.relu(self.fc1(x.view(-1, 784)))
        out = self.relu(self.fc2(out))
        out = self.dropout(out)
        out = self.fc3(out)
        return out

def dataLoader():
    batch_size = 100
    mnist_train = dsets.MNIST(root='MNIST_data/', train=True,
    transform=transforms.ToTensor(), download=True)
    mnist_test = dsets.MNIST(root='MNIST_data/', train=False,
    transform=transforms.ToTensor(), download=True)
    data_loader = torch.utils.data.DataLoader(dataset=mnist_train, batch_size=batch_size,
    shuffle=True, drop_last=True)

    images, labels = next(iter(data_loader))
    # print('images.shape: ', images.shape)
    # print('label.shape: ', labels.shape)

    torch_image = torch.squeeze(images[0])
    image = torch_image.numpy()
    label = labels[0].numpy()
    plt.title(label)
    plt.imshow(image, 'gray')
    plt.show()

def nnMnist():
    torch.manual_seed(777)

    # Hyper parameters
    learning_rate = 0.001
    training_epochs = 15
    batch_size = 100

    mnist_train = dsets.MNIST(root='MNIST_data/', train=True,
                              transform=transforms.ToTensor(), download=True)
    mnist_test = dsets.MNIST(root='MNIST_data/', train=False,
                             transform=transforms.ToTensor(), download=True)
    data_loader = torch.utils.data.DataLoader(dataset=mnist_train, batch_size=batch_size,
                                              shuffle=True, drop_last=True)

    model = DNN()

    criterion = torch.nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(), lr = learning_rate)

    total_batch = len(data_loader)
    print("# of total batches: {}" .format(total_batch))

    for epoch in range(training_epochs):
        avg_cost = 0

        for X, Y in data_loader:
            optimizer.zero_grad()
            hypothesis = model(X)
            cost = criterion(hypothesis, Y)
            cost.backward()
            optimizer.step()

            avg_cost += cost / total_batch

        print('[Epoch: {:>4}] cost = {:>.9}' .format(epoch + 1, avg_cost))

    with torch.no_grad():
        X_test = mnist_test.test_data.view(len(mnist_test), 28 * 28).float()
        Y_test = mnist_test.test_labels

        prediction = model(X_test)
        prediction = torch.argmax(prediction, 1)
        correct_prediction = prediction == Y_test
        accuracy = correct_prediction.float().mean()
        print('Accuracy:', accuracy.item())

        fig = plt.figure()
        for i in range(10):
            subplot = fig.add_subplot(2, 5, i + 1)
            subplot.set_xticks([])
            subplot.set_yticks([])
            subplot.set_title('%d' % prediction[i])
            subplot.imshow(X_test[i].reshape((28, 28)), cmap=plt.cm.gray_r)
        plt.show()

def dropoutnMnist():
    torch.manual_seed(777)

    # Hyper parameters
    learning_rate = 0.001
    training_epochs = 15
    batch_size = 100

    mnist_train = dsets.MNIST(root='MNIST_data/', train=True,
                              transform=transforms.ToTensor(), download=True)
    mnist_test = dsets.MNIST(root='MNIST_data/', train=False,
                             transform=transforms.ToTensor(), download=True)
    data_loader = torch.utils.data.DataLoader(dataset=mnist_train, batch_size=batch_size,
                                              shuffle=True, drop_last=True)

    model = dropDNN()

    criterion = torch.nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(), lr = learning_rate)

    total_batch = len(data_loader)
    print("# of total batches: {}" .format(total_batch))

    for epoch in range(training_epochs):
        avg_cost = 0

        for X, Y in data_loader:
            optimizer.zero_grad()
            hypothesis = model(X)
            cost = criterion(hypothesis, Y)
            cost.backward()
            optimizer.step()

            avg_cost += cost / total_batch

        print('[Epoch: {:>4}] cost = {:>.9}' .format(epoch + 1, avg_cost))

    with torch.no_grad():
        model.eval()
        X_test = mnist_test.test_data.view(len(mnist_test), 28 * 28).float()
        Y_test = mnist_test.test_labels

        prediction = model(X_test)
        prediction = torch.argmax(prediction, 1)
        correct_prediction = prediction == Y_test
        accuracy = correct_prediction.float().mean()
        print('Accuracy:', accuracy.item())

        fig = plt.figure()
        for i in range(10):
            subplot = fig.add_subplot(2, 5, i + 1)
            subplot.set_xticks([])
            subplot.set_yticks([])
            subplot.set_title('%d' % prediction[i])
            subplot.imshow(X_test[i].reshape((28, 28)), cmap=plt.cm.gray_r)
        plt.show()

def main():
    # dataLoader()
    # nnMnist()
    dropoutnMnist()

if __name__ == "__main__":
    main()