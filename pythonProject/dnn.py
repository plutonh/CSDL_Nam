import torch
import torch.nn as nn
import numpy as np
import matplotlib.pyplot as plt

device = 'cuda' if torch.cuda.is_available() else 'cpu'

global valid_plt
valid_plt = 0

def xorFunction():
    torch.manual_seed(777)
    if device == 'cuda':
        torch.cuda.manual_seed_all(777)

    X = torch.FloatTensor([[0, 0], [0, 1], [1, 0], [1, 1]]).to(device)
    Y = torch.FloatTensor([[0], [1], [1], [0]]).to(device)

    linear = nn.Linear(2, 1, bias = True)
    sigmoid = nn.Sigmoid()
    model = nn.Sequential(linear, sigmoid).to(device)

    criterion = torch.nn.BCELoss().to(device)
    optimizer = torch.optim.SGD(model.parameters(), lr = 1)

    for step in range(10001):
        optimizer.zero_grad()
        hypothesis = model(X)

        cost = criterion(hypothesis, Y)
        cost.backward()
        optimizer.step()

        if step % 100 == 0:
            print(step, cost.item())

    with torch.no_grad():
        hypothesis = model(X)
        predicted = (hypothesis > 0.5).float()
        accuracy = (predicted == Y).float().mean()
        print('Model\'s output value (Hypothesis): ', hypothesis.detach().cpu().numpy())
        print('Model\'s predicted value(Predicted): ', predicted.detach().cpu().numpy())
        print('Real value (Y): ', Y.cpu().numpy())
        print('Accuracy: ', accuracy.item())

def nnXorFunction():
    torch.manual_seed(777)
    if device == 'cuda':
        torch.cuda.manual_seed_all(777)

    X = torch.FloatTensor([[0, 0], [0, 1], [1, 0], [1, 1]]).to(device)
    Y = torch.FloatTensor([[0], [1], [1], [0]]).to(device)

    model = nn.Sequential(
        nn.Linear(2, 10, bias = True),
        nn.Sigmoid(),
        nn.Linear(10, 10, bias = True),
        nn.Sigmoid(),
        nn.Linear(10, 10, bias = True),
        nn.Sigmoid(),
        nn.Linear(10, 1, bias = True),
        nn.Sigmoid()
    ).to(device)

    criterion = torch.nn.BCELoss().to(device)
    optimizer = torch.optim.SGD(model.parameters(), lr = 1)

    for step in range(10001):
        optimizer.zero_grad()
        hypothesis = model(X)

        cost = criterion(hypothesis, Y)
        cost.backward()
        optimizer.step()

        if step % 100 == 0:
            print(step, cost.item())

    with torch.no_grad():
        hypothesis = model(X)
        predicted = (hypothesis > 0.5).float()
        accuracy = (predicted == Y).float().mean()
        print('Model\'s output value (Hypothesis): ', hypothesis.detach().cpu().numpy())
        print('Model\'s predicted value(Predicted): ', predicted.detach().cpu().numpy())
        print('Real value (Y): ', Y.cpu().numpy())
        print('Accuracy: ', accuracy.item())

def torchSigmoid(x):
    return 1.0 / (1.0 + torch.exp(-x))

def sigmoid_prime(x): # derivative of the sigmoid function
    return torchSigmoid(x) * (1 - torchSigmoid(x))

def Backpropagation():
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

    X = torch.FloatTensor(x_data)
    target = torch.FloatTensor(y_data)
    W = torch.zeros((2, 1), requires_grad=True)
    b = torch.zeros(1, requires_grad=True)

    learning_rate = 0.01
    nb_epochs = 1000

    for epoch in range(nb_epochs + 1): # only One layer exists
        layer = X.matmul(W) + b
        y_pred = torchSigmoid(layer)

        cost = - target * torch.log(y_pred) - (1 - target) * torch.log(1 - y_pred)
        cost = torch.sum(cost).mean()

        d_loss = (y_pred - target) / (y_pred * (1 - y_pred) + 1e-7)
        d_sigma = sigmoid_prime(layer)
        d_layer = d_loss * d_sigma
        d_b = d_layer
        d_W = torch.matmul(X.T, d_layer)

        W = W - learning_rate * d_W
        b = b - learning_rate * d_b

        if epoch % 100 == 0:
            print('Epoch {:4d}/{} Cost: {:.6f}' .format(epoch, nb_epochs, cost.item()))

        if epoch == nb_epochs:
            prediction = y_pred >= torch.FloatTensor([0.5])
            print(prediction)

def npSigmoid(x):
    return 1 / (1 + np.exp(-x))

def drawSigmoid():
    global valid_plt
    valid_plt += 1
    plt.figure(valid_plt)

    x = np.arange(-5.0, 5.0, 0.1)
    y = npSigmoid(x)

    plt.plot(x, y)
    plt.plot([0,0], [1.0, 0.0], ':')
    plt.title('Sigmoid Function')

def drawTanhFunction():
    global valid_plt
    valid_plt += 1
    plt.figure(valid_plt)

    x = np.arange(-5.0, 5.0, 0.1)
    y = np.tanh(x)

    plt.plot(x, y)
    plt.plot([0,0], [-1.0, 1.0], ':')
    plt.axhline(y = 0, color = 'orange', linestyle = '--')
    plt.title('Tanh Function')

def Relu(x):
    return np.maximum(0, x)
def drawRelu():
    global valid_plt
    valid_plt += 1
    plt.figure(valid_plt)

    x = np.arange(-5.0, 5.0, 0.1)
    y = Relu(x)

    plt.plot(x, y)
    plt.plot([0,0], [5.0, 0.0], ':')
    plt.title('Relu Function')

def main():
    global valid_plt

    # xorFunction()
    # nnXorFunction()
    # Backpropagation()
    drawSigmoid()
    drawTanhFunction()
    drawRelu()

    if(valid_plt > 0):
        plt.show()
    else:
        valid_plt = 0

if __name__ == "__main__":
    main()