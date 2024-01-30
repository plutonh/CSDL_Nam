import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
import numpy as np
import matplotlib.pyplot as plt

class BinaryClassifier(nn.Module):
    def __init__(self):
        super().__init__()
        self.model = nn.Sequential(nn.Linear(2, 1), nn.Sigmoid())

    def forward(self, x):
        return self.model(x)

class SoftmaxclassifierModel(nn.Module):
    def __init__(self):
        super().__init__()
        self.linear = nn.Linear(4, 3)

    def forward(self, x):
        return self.linear(x)

def testNumpy():
    a = torch.ones(5)
    b = a.numpy()
    c = np.ones(5)
    d = torch.from_numpy(c)
    print(a, b, c, d)

def testTensor():
    x = torch.tensor((5, 5))
    device = torch.device("cuda") if torch.cuda.is_available() else torch.device("cpu")
    y = torch.ones_like(x, device=device)
    x = x.to(device)
    z = x+y
    print(z)
    print(z.to("cpu"), torch.double)

def linearRegression():
    torch.manual_seed(1)

    x_train = torch.FloatTensor([[1], [2], [3]])
    y_train = torch.FloatTensor([[5], [6], [7]])

    W = torch.zeros(1, requires_grad=True)
    b = torch.zeros(1, requires_grad=True)

    optimizer = optim.SGD([W, b], lr = 0.01) # lr: learning rate
    epochs = 3000
    for epoch in range(epochs + 1):
        H = x_train * W + b
        cost = torch.mean((H - y_train) ** 2)

        optimizer.zero_grad() # Initializing gradient
        cost.backward() # Backpropagation
        optimizer.step() # Updating weight
        if(epoch+1) % 300 == 0:
            print('Epoch {:4d}/{} W: {:.3f}, b: {:.3f} Cost: {:.6f}'.format(
                (epoch+1), epochs, W.item(), b.item(), cost.item()
            ))

def nnLinearRegression():
    torch.manual_seed(1)

    x_train = torch.FloatTensor([[1], [2], [3]])
    y_train = torch.FloatTensor([[5], [6], [7]])

    model = nn.Linear(1, 1)

    optimizer = torch.optim.SGD(model.parameters(), lr=0.01)

    record_cost = []

    epochs = 3000
    for epoch in range(epochs + 1):
        prediction = model(x_train)
        cost = F.mse_loss(prediction, y_train)

        record_cost.append(cost.item())

        optimizer.zero_grad()  # Initializing gradient
        cost.backward()  # Backpropagation
        optimizer.step()  # Updating weight

        W, b = list(model.parameters())[0], list(model.parameters())[1]

        if (epoch + 1) % 300 == 0:
            print('Epoch {:4d}/{} W: {:.3f}, b: {:.3f} Cost: {:.6f}'.format(
                (epoch + 1), epochs, W.item(), b.item(), cost.item()
            ))

    plt.plot(record_cost, 'b')
    plt.show()

def multiRegression():
    torch.manual_seed(1)

    x_train = torch.FloatTensor([[73, 80, 75],
                                 [93, 88, 93],
                                 [89, 91, 80],
                                 [96, 98, 100],
                                 [73, 66, 70]])
    y_train = torch.FloatTensor([[152], [185], [180], [196], [142]])

    W = torch.zeros((3, 1), requires_grad=True)
    b = torch.zeros(1, requires_grad=True)
    optimizer = torch.optim.SGD([W, b], lr=1e-5)

    epochs = 10000
    for epoch in range(epochs + 1):
        hypothesis =x_train.matmul(W) + b
        cost = torch.mean((hypothesis - y_train) ** 2)

        optimizer.zero_grad()  # Initializing gradient
        cost.backward()  # Backpropagation
        optimizer.step()  # Updating weight

        if epoch % 1000 == 0:
            print('Epoch {:4d}/{} hypothesis: {} Cost: {:.6f}'.format(
                epoch, epochs, hypothesis.squeeze().detach(), cost.item()
            ))

def nnmultiRegression():
    torch.manual_seed(1)

    x_train = torch.FloatTensor([[73, 80, 75],
                                 [93, 88, 93],
                                 [89, 91, 80],
                                 [96, 98, 100],
                                 [73, 66, 70]])
    y_train = torch.FloatTensor([[152], [185], [180], [196], [142]])

    model = nn.Linear(3, 1)
    optimizer = torch.optim.SGD(model.parameters(), lr=1e-5)

    epochs = 10000
    for epoch in range(epochs + 1):
        prediction = model(x_train)
        cost = F.mse_loss(prediction, y_train)

        optimizer.zero_grad()  # Initializing gradient
        cost.backward()  # Backpropagation
        optimizer.step()  # Updating weight

        if epoch % 1000 == 0:
            print('Epoch {:4d}/{} prediction: {} Cost: {:.6f}'.format(
                epoch, epochs, prediction.squeeze().detach(), cost.item()
            ))

def logisticRegression():
    torch.manual_seed(1)

    x_data = [[1, 2],
              [2, 3],
              [3, 1],
              [4, 3],
              [5, 3],
              [6, 2]]
    y_data = [[0],
              [0],
              [0],
              [1],
              [1],
              [1]]

    x_train = torch.FloatTensor(x_data)
    y_train = torch.FloatTensor(y_data)

    W = torch.zeros((2, 1), requires_grad=True)
    b = torch.zeros(1, requires_grad=True)

    optimizer = optim.SGD([W, b], lr = 1)

    nb_epochs = 1000
    for epoch in range(nb_epochs + 1):
        hypothesis = 1 / (1 + torch.exp(-(x_train.matmul(W) + b)))
        cost = -(y_train * torch.log(hypothesis) + (1 - y_train) * torch.log(1 - hypothesis)).mean()

        optimizer.zero_grad()
        cost.backward()
        optimizer.step()

        if epoch % 100 == 0:
            print('Epoch {:4d}/{} Cost: {:.6f}'.format(epoch, nb_epochs, cost.item()))

    if epoch == nb_epochs:
        prediction = hypothesis >= torch.FloatTensor([0.5])
        print(hypothesis)
        print(prediction)

def nnlogisticRegression():
    torch.manual_seed(1)

    x_data = [[1, 2],
              [2, 3],
              [3, 1],
              [4, 3],
              [5, 3],
              [6, 2]]
    y_data = [[0],
              [0],
              [0],
              [1],
              [1],
              [1]]

    x_train = torch.FloatTensor(x_data)
    y_train = torch.FloatTensor(y_data)

    model = BinaryClassifier()

    optimizer = optim.SGD(model.parameters(), lr = 1)

    nb_epochs = 1000
    for epoch in range(nb_epochs + 1):
        hypothesis = model(x_train)
        cost = F.binary_cross_entropy(hypothesis, y_train)
        optimizer.zero_grad()
        cost.backward()
        optimizer.step()

        if epoch % 100 == 0:
            prediction = hypothesis >= torch.FloatTensor([0.5])
            correct_prediction = prediction.float() == y_train
            accuracy = correct_prediction.sum().item() / len(correct_prediction)
            print('Epoch {:4d}/{} Cost: {:.6f} Accuracy {:2.2f}%'.format(epoch, nb_epochs, cost.item(), accuracy * 100))

def softmax():
    torch.manual_seed(1)

    x_train = [[1, 2, 1, 1],
               [2, 1, 3, 2],
               [3, 1, 3, 4],
               [4, 1, 5, 5],
               [1, 7, 5, 5],
               [1, 2, 5, 6],
               [1, 6, 6, 6],
               [1, 7, 7, 7]]
    y_train = [2, 2, 2, 1, 1, 1, 0, 0]
    x_train = torch.FloatTensor(x_train)
    y_train = torch.LongTensor(y_train)

    y_one_hot = torch.zeros(8, 3)
    y_one_hot.scatter_(1, y_train.unsqueeze(1), 1)
    """ y_one_hot.scatter Output
    tensor([[0., 0., 1.],
            [0., 0., 1.],
            [0., 0., 1.],
            [0., 1., 0.],
            [0., 1., 0.],
            [0., 1., 0.],
            [1., 0., 0.],
            [1., 0., 0.]])"""

    W = torch.zeros((4, 3), requires_grad=True)
    b = torch.zeros(1, requires_grad=True)

    optimizer = optim.SGD([W, b], lr=0.1)

    nb_epochs = 1000
    for epoch in range(nb_epochs + 1):
        hypothesis = F.softmax(x_train.matmul(W) + b, dim=1)
        cost = (y_one_hot * -torch.log(hypothesis)).sum(dim=1).mean()

        optimizer.zero_grad()
        cost.backward()
        optimizer.step()

        if epoch % 100 == 0:
            print('Epoch {:4d}/{} Cost: {:.6f}' .format(epoch, nb_epochs, cost.item()))

def nnsoftmax():
    torch.manual_seed(1)

    x_train = [[1, 2, 1, 1],
               [2, 1, 3, 2],
               [3, 1, 3, 4],
               [4, 1, 5, 5],
               [1, 7, 5, 5],
               [1, 2, 5, 6],
               [1, 6, 6, 6],
               [1, 7, 7, 7]]
    y_train = [2, 2, 2, 1, 1, 1, 0, 0]
    x_train = torch.FloatTensor(x_train)
    y_train = torch.LongTensor(y_train)

    y_one_hot = torch.zeros(8, 3)
    y_one_hot.scatter_(1, y_train.unsqueeze(1), 1)
    """ y_one_hot.scatter Output
    tensor([[0., 0., 1.],
            [0., 0., 1.],
            [0., 0., 1.],
            [0., 1., 0.],
            [0., 1., 0.],
            [0., 1., 0.],
            [1., 0., 0.],
            [1., 0., 0.]])"""
    model = SoftmaxclassifierModel()
    optimizer = optim.SGD(model.parameters(), lr = 0.1)

    nb_epochs = 1000
    for epoch in range(nb_epochs + 1):
        prediction = model(x_train)
        cost = F.cross_entropy(prediction, y_train)

        optimizer.zero_grad()
        cost.backward()
        optimizer.step()

        if epoch % 100 == 0:
            print('Epoch {:4d}/{} Cost: {:.6f}' .format(epoch, nb_epochs, cost.item()))

def main():
    # testNumpy()
    # testTensor()
    # linearRegression()
    nnLinearRegression()
    # multiRegression()
    # nnmultiRegression()
    # logisticRegression()
    # nnlogisticRegression()
    # softmax()
    # nnsoftmax()

if __name__ == "__main__":
    main()