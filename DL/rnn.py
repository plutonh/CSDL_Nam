import torch
import torch.nn as nn
import numpy as np
import torch.optim as optim

class Net(torch.nn.Module):
    def __init__(self, input_size, hidden_size, output_size):
        super(Net, self).__init__()
        self.rnn = torch.nn.RNN(input_size, hidden_size, batch_first=True) # RNN cell
        self.fc = torch.nn.Linear(hidden_size, output_size, bias=True) # Output layer

    def forward(self, x):
        x, _status = self.rnn(x)
        x = self.fc(x)
        return x

class LongNet(torch.nn.Module):
    def __init__(self, input_dim, hidden_dim, layers):
        super(LongNet, self).__init__()
        self.rnn = torch.nn.RNN(input_dim, hidden_dim, num_layers = layers, batch_first=True) # RNN cell
        self.fc = torch.nn.Linear(hidden_dim, hidden_dim, bias=True) # Output layer

    def forward(self, x):
        x, _status = self.rnn(x)
        x = self.fc(x)
        return x

def TestRNN():
    input_str = 'hihell'
    label_str = 'ihello'
    char_vocab = sorted(list(set(input_str + label_str)))
    vocab_size = len(char_vocab)
    print('Size of character set : {}' .format(vocab_size))

    input_size = vocab_size
    hidden_size = 5
    output_size = 5
    learning_rate = 0.1

    char_to_index = dict((c, i) for i, c in enumerate(char_vocab))
    # Dictionary: {key1: value1, key2: value2, ...}
    # enumerate(): print the index and component value
    print(char_to_index)

    index_to_char = {}
    for key, value in char_to_index.items():
        index_to_char[value] = key
    print(index_to_char)

    x_data = [char_to_index[c] for c in input_str]
    y_data = [char_to_index[c] for c in label_str]
    print(x_data)
    print(y_data)

    # Makes 3-dimension Tensor
    x_data = [x_data]
    y_data = [y_data]
    # print(x_data)
    # print(y_data)

    x_one_hot = [np.eye(vocab_size)[x] for x in x_data]
    # np.eye(n): generates n * n size Unit matrix
    print(x_one_hot)

    X = torch.FloatTensor(x_one_hot)
    Y = torch.LongTensor(y_data)

    print('Size of training data set : {}' .format(X.shape))
    print('Size of lable : {}' .format(Y.shape))

    net = Net(input_size, hidden_size, output_size)
    outputs = net(X)

    criterion = torch.nn.CrossEntropyLoss()
    optimizer = optim.Adam(net.parameters(), learning_rate)

    for i in range(100):
        optimizer.zero_grad()
        outputs = net(X) # outputs: batch_size, sequence, input_size
        loss = criterion(outputs.view(-1, input_size), Y.view(-1))
        # outputs.view(-1, input_size): combine batch_size and sequence
        # .view(-1): Specify as automatically convertible dimension
        loss.backward()
        optimizer.step()

        result = outputs.data.numpy().argmax(axis=2)
        # Extract the maximum value at each position in the input
        result_str = ''.join([index_to_char[c] for c in np.squeeze(result)])
        print(i, "loss: ", loss.item(), "prediction: ", result, "true Y: ", y_data, "prediction str: ", result_str)

def TestLongRNN():
    sentence = ("if you want to build a ship, don't drum up people together to "
                "collect wood and don't assign them tasks and work, but rather "
                "teach them to long for the endless immensity of the sea.")
    char_set = list(set(sentence))
    char_dic = {c: i for i, c in enumerate(char_set)}

    print(char_dic)

    dic_size = len(char_dic)
    print('Size of character group : {}' .format(dic_size))

    hidden_size = dic_size
    sequence_length = 10
    learning_rate = 0.1

    x_data = []
    y_data = []

    for i in range(0, len(sentence) - sequence_length):
        x_str = sentence[i:i + sequence_length]
        y_str = sentence[i + 1: i + sequence_length + 1]
        print(i, x_str, '->', y_str)

        x_data.append([char_dic[c] for c in x_str])
        y_data.append([char_dic[c] for c in y_str])

    # print(x_data[0])
    # print(y_data[0])

    x_one_hot = [np.eye(dic_size)[x] for x in x_data]

    X = torch.FloatTensor(x_one_hot)
    Y = torch.LongTensor(y_data)

    print('Size of training data set : {}' .format(X.shape))
    print('Size of lable : {}' .format(Y.shape))

    # print(X[0])

    net = LongNet(dic_size, hidden_size, 2)

    criterion = torch.nn.CrossEntropyLoss()
    optimizer = optim.Adam(net.parameters(), learning_rate)

    outputs = net(X)

    for i in range(100):
        optimizer.zero_grad()
        outputs = net(X)
        loss = criterion(outputs.view(-1, dic_size), Y.view(-1))
        loss.backward()
        optimizer.step()
        results = outputs.argmax(dim=2)
        predict_str = ""
        for j, result in enumerate(results):
            if j == 0:
                predict_str += ''.join([char_set[t] for t in result])
            else:
                predict_str += char_set[result[-1]]
        print(predict_str)

def main():
    # TestRNN()
    TestLongRNN()

if __name__ == "__main__":
    main()