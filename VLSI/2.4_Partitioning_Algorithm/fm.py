class Cell:
    def __init__(self, id):
        self.id = id
        self.nets = []
        
    def get_FS_value(self):
        FS_value = 0
        
        for net in self.nets: # Find whether both are same partition or not
            if net.left_id == self.id:
                other_c = net.right_v
            elif net.right_id == self.id:
                other_c = net.left_v
                
            if other_c.partition_label != self.partition_label:
                FS_value += 1
                
        return FS_value
    
    def get_TE_value(self):
        TE_value = 0
        
        for net in self.nets: # Find whether both are same partition or not
            if net.left_id == self.id:
                other_c = net.right_v
            elif net.right_id == self.id:
                other_c = net.left_v
                
            if other_c.partition_label == self.partition_label:
                TE_value += 1

        return TE_value

    def add_net(self, net):
        for present_net in self.nets:
            if present_net.left_id == net.right_id and present_net.right_id == net.left_id:
                return
            
        self.nets.append(net)

class Net:
    def __init__(self, left_id, right_id):
        self.left_id = left_id
        self.right_id = right_id
        
class Graph:
    def __init__(self, cells, nets):
        self.cells = cells
        self.nets = nets
        
        cell_dict = {v.id: v for v in self.cells}
        
        for net in self.nets:
        # left_id vertex <-> left_id (net) right_id <-> right_id vertex
            net.left_v = cell_dict[net.left_id]
            cell_dict[net.left_id].add_net(net)
            
            net.right_v = cell_dict[net.right_id]
            cell_dict[net.right_id].add_net(net)
            
    def get_partition_cost(self):
        cost = 0
        
        for net in self.nets: # Not same partition -> cost
            if net.left_v.partition_label != net.right_v.partition_label:
                cost += 1
                
        return cost
    
class FM:
    def __init__(self, graph, r):
        self.graph = graph
        self.r = r
        
    def balance(self): # Balance criterion
        totalArea = # total area in Graph
        maxArea = # max area in Graph
        lb = self.r * totalArea - maxArea
        ub = self.r * totalArea + maxArea
        # Given weight?
        
    def partition(self): # Initial partition
        for i in range(len(self.graph.cells)//2):
            self.graph.cells[i].partition_label = "A"
        for i in range(len(self.graph.cells)//2, len(self.graph.cells)):
            self.graph.cells[i].partition_label = "B" 
    
        print ("Initial partition cost: " + str(self.graph.get_partition_cost()))
        p = 0 # pass
        total_gain = 0
        
        while True:
            group_a = []
            group_b = []
            
            for i in range(len(self.graph.cells)):
                if self.graph.cells[i].partition_label == "A":
                    group_a.append(self.graph.cells[i])
                elif self.graph.cells[i].partition_label == "B":
                    group_b.append(self.graph.cells[i])
            
            FS_Value = {n.id : n.get_FS_value() for n in self.graph.cells}
            TE_Value = {n.id : n.get_TE_value() for n in self.graph.cells}
            gains = [] # [ ([a, b], gain), ... ]
            
            for _ in range(len(self.graph.cells)):
                max_gain = -1 * float("inf")
                num = 0
                for i in range(len(self.graph.cells)):
                    gain = FS_Value[i] - TE_Value[i]
                    
                    if gain > max_gain:
                        max_gain = gain
                        
                    if(self.graph.cells[i].paritition_label == "A"):
                        group_a[i].remove(self.graph.cells[i])
                    if(self.graph.cells[i].paritition_label == "B"):
                        group_b[i].remove(self.graph.cells[i]) 
                    
                gains.append([self.graph.cells[i], max_gain])
                i += 1
                
                for x in group_a:
                    c_xa = len(set(x.nets).intersection(a.nets))
                    c_xb = len(set(x.nets).intersection(b.nets))
                    D_values[x.id] += 2 * (c_xa) - 2 * (c_xb) # same principle of finding gain
                    
                for y in group_b:
                    c_ya = len(set(x.nets).intersection(a.nets))
                    c_yb = len(set(x.nets).intersection(b.nets))
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
                    for v in self.graph.cells:
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
    
    nets = []
    cells = []
    seen_cell_ids = []
    
    for line in list(file):
        n_list = line.split()
        left_id = int(n_list[0])
        right_id = int(n_list[1])
        
        nets.append(Net(left_id, right_id))
        
        if left_id not in seen_cell_ids:
            cells.append(Cell(left_id))
            seen_cell_ids.append(left_id)
        
        if right_id not in seen_cell_ids:
            cells.append(Cell(right_id))
            seen_cell_ids.append(right_id)
            
    return Graph(cells, nets)

# inf = 10000

def main():
    graph = load_data("data.txt")
    r = 0.5 # A/(A+B) -> 0 ~ 1
    fm = FM(graph, r)
    fm.partition()
    
if __name__ == "__main__":
    main()