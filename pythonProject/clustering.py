import torch
import numpy as np
import matplotlib.pyplot as plt
from kmeans_pytorch import kmeans, kmeans_predict
import pandas as pd
from sklearn.cluster import KMeans
import seaborn as sns

def MiniKmeans(data, k, max_iters = 10):
    num_features = data.shape[1]
    centers = np.random.randn(k, num_features)

    for _ in range(max_iters):
        clusters = [[] for _ in range(k)]

        for point in data:
            distances = np.linalg.norm(centers - point, axis=1)
            # norm: 각 원소들의 제곱의 합의 근
            cluster_id = np.argmin(distances)
            clusters[cluster_id].append(point)

        for i in range(k):
            cluster_points = np.array(clusters[i])
            if len(cluster_points) > 0:
                centers[i] = np.mean(cluster_points, axis=0)

    return centers, clusters

def TestCluster():
    data = np.array([[1, 2],
                     [1.5, 1.8],
                     [5, 8],
                     [8, 8],
                     [1, 0.6],
                     [9, 11]])
    k = 2
    centers, clusters = MiniKmeans(data, k)
    for i, cluster in enumerate(clusters):
        print(f"Cluster {i+1}: ")
        print(cluster)
        print()

    print("Centers: ")
    print(centers)

def TestKmeans_1():
    np.random.seed(123)

    data_size, dims, num_clusters = 1000, 2, 3
    x = np.random.randn(data_size, dims)/6

    x = torch.from_numpy(x)

    if torch.cuda.is_available():
        device = torch.device('cuda:0')
    else:
        device = torch.device('cpu')

    cluster_ids_x, cluster_centers = kmeans(
        X=x, num_clusters = num_clusters, distance='euclidean', device=device
    )

    # print(cluster_ids_x)
    # print(cluster_centers)

    y = np.random.randn(5, dims) / 6
    y = torch.from_numpy(y)

    cluster_ids_y = kmeans_predict(
        y, cluster_centers, 'euclidean', device=device
    )
    # print(cluster_ids_y)

    plt.figure(figsize=(4, 3), dpi=160)
    plt.scatter(x[:, 0], x[:, 1], c=cluster_ids_x, cmap='cool')
    plt.scatter(y[:, 0], y[:, 1], c=cluster_ids_y, cmap='cool', marker='X')
    plt.scatter(
        cluster_centers[:, 0], cluster_centers[:, 1], c='white',
        alpha=0.6,
        edgecolors='black',
        linewidths=2)
    plt.axis([-1, 1, -1, 1])
    plt.tight_layout()
    plt.show()

def TestKmeans_2():
    df = pd.DataFrame(columns=['x', 'y'])
    df.loc[0] = [3, 1]
    df.loc[1] = [4, 1]
    df.loc[2] = [3, 2]
    df.loc[3] = [4, 2]
    df.loc[4] = [10, 5]
    df.loc[5] = [10, 6]
    df.loc[6] = [11, 5]
    df.loc[7] = [11, 6]
    df.loc[8] = [15, 1]
    df.loc[9] = [15, 2]
    df.loc[10] = [16, 1]
    df.loc[11] = [16, 2]

    print(df.head(20))

    # visualize data point
    sns.lmplot('x', 'y', data=df, fit_reg=False, scatter_kws={"s": 200})  # x-axis, y-axis, data, no line, marker size

    # title
    plt.title('kmean plot')
    # x-axis label
    plt.xlabel('x')
    # y-axis label
    plt.ylabel('y')
    # convert dataframe to numpy array
    data_points = df.values

    kmeans = KMeans(n_clusters=3).fit(data_points)
    print(kmeans.labels_)

    # this is final centroids position
    print(kmeans.cluster_centers_)

    df['cluster_id'] = kmeans.labels_
    print(df.head(12))
    sns.lmplot('x', 'y', data=df, fit_reg=False,  # x-axis, y-axis, data, no line
               scatter_kws={"s": 150},  # marker size
               hue="cluster_id") # color

    # title
    plt.title('after kmean clustering')
    plt.show()

def main():
    #TestCluster()
    #TestKmeans_1()
    TestKmeans_2()

if __name__ == "__main__":
    main()