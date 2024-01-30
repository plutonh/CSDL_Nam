class Vertex:
    def __init__(self, id):
        self.id = id
        self.edges = []
        
    def get_D_value(self):
        D_value = 0
        
        for edge in self.edges: # Find whether both are same partition or not
            if edge.left_id == self.id:
                other_v = edge.right_v
            elif edge.right_id == self.id:
                other_v = edge.left_v
                
            if other_v.partition_label != self.partition_label:
                D_value += 1
            else:
                D_value -= 1
                
        return D_value
    
    def add_edge(self, edge):
        for present_edge in self.edges:
            if present_edge.left_id == edge.right_id and present_edge.right_id == edge.left_id:
                return
            
        self.edges.append(edge)

class Edge:
    def __init__(self, left_id, right_id):
        self.left_id = left_id
        self.right_id = right_id
        
class Graph:
    def __init__(self, vertices, edges):
        self.vertices = vertices
        self.edges = edges
        
        vertex_dict = {v.id: v for v in self.vertices}
        
        for edge in self.edges: 
        # left_id vertex <-> left_id (EDGE) right_id <-> right_id vertex
            edge.left_v = vertex_dict[edge.left_id]
            vertex_dict[edge.left_id].add_edge(edge)
            
            edge.right_v = vertex_dict[edge.right_id]
            vertex_dict[edge.right_id].add_edge(edge)
            
    def get_partition_cost(self):
        cost = 0
        
        for edge in self.edges: # Not same partition -> cost
            if edge.left_v.partition_label != edge.right_v.partition_label:
                cost += 1
                
        return cost
    
class KL:
    def __init__(self, graph):
        self.graph = graph
        
    def partition(self): # Initial partition
        for i in range(len(self.graph.vertices)//2):
            self.graph.vertices[i].partition_label = "A"
        for i in range(len(self.graph.vertices)//2, len(self.graph.vertices)):
            self.graph.vertices[i].partition_label = "B" 
    
        print ("Initial partition cost: " + str(self.graph.get_partition_cost()))
        p = 0 # pass
        total_gain = 0
        
        while True:
            group_a = []
            group_b = []
            
            for i in range(len(self.graph.vertices)):
                if self.graph.vertices[i].partition_label == "A":
                    group_a.append(self.graph.vertices[i])
                elif self.graph.vertices[i].partition_label == "B":
                    group_b.append(self.graph.vertices[i])
                    
            D_values = {v.id: v.get_D_value() for v in self.graph.vertices}
            gains = [] # [ ([a, b], gain), ... ]
            
            for _ in range(len(self.graph.vertices)//2):
                max_gain = -1 * float("inf")
                pair = []
                
                for a in group_a:
                    for b in group_b:
                        c_ab = len(set(a.edges).intersection(b.edges)) # Correct Overestmation
                        # set.intersection -> finding same components
                        gain = D_values[a.id] + D_values[b.id] - (2 * c_ab)
                        
                        if gain > max_gain:
                            max_gain = gain
                            pair = [a, b]
                
                a = pair[0]
                b = pair[1]
                group_a.remove(a)
                group_b.remove(b)
                gains.append([[a, b], max_gain])
                
                for x in group_a:
                    c_xa = len(set(x.edges).intersection(a.edges))
                    c_xb = len(set(x.edges).intersection(b.edges))
                    D_values[x.id] += 2 * (c_xa) - 2 * (c_xb) # same principle of finding gain
                    
                for y in group_b:
                    c_ya = len(set(x.edges).intersection(a.edges))
                    c_yb = len(set(x.edges).intersection(b.edges))
                    D_values[y.id] += 2 * (c_yb) - 2 * (c_ya) # same principle of finding gain

            # find g that maximizes the sum g_max
            g_max = -1 * float("inf")
            jmax = 0
            for j in range(1, len(gains) + 1):
                g_sum = 0
                for i in range(j):
                    g_sum += gains[i][1]
                    
                if g_sum > g_max:
                    g_max = g_sum
                    jmax = j
                
            if g_max > 0:
                for i in range(jmax):
                    for v in self.graph.vertices:
                        # gains = [ ([a, b], gain), ... ] -> gain[i][0][0] -> a, gain[i][0][1] -> b
                        if v.id == gains[i][0][0].id:
                            v.partition_label = "B"
                        elif v.id == gains[i][0][1].id:
                            v.partition_label = "A"
                            
                p += 1
                total_gain += g_max
                print( "Pass: " + str(p) + "\t\t\tGain: " + str(g_max))
            else: break
            
        print("Total passes: " + str(p) + "\t\tTotal gain: " + str(total_gain) + "\t\tFinal partition cost: " + str(self.graph.get_partition_cost())) 
        
                 
def load_data(filename):
    file = open(filename, 'r')
    
    edges = []
    vertices = []
    seen_vertex_ids = []
    
    for line in list(file):
        v_list = line.split()
        left_id = int(v_list[0])
        right_id = int(v_list[1])
        
        edges.append(Edge(left_id, right_id))
        
        if left_id not in seen_vertex_ids:
            vertices.append(Vertex(left_id))
            seen_vertex_ids.append(left_id)
        
        if right_id not in seen_vertex_ids:
            vertices.append(Vertex(right_id))
            seen_vertex_ids.append(right_id)
            
    return Graph(vertices, edges)

# inf = 10000

def main():
    graph = load_data("data.txt")
    kl = KL(graph)
    kl.partition()
    
if __name__ == "__main__":
    main()