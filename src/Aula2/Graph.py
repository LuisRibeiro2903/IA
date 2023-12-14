

from Node import Node

class Graph:
    
    def __init__(self, directed = False):
        self.m_nodes = []
        self.m_directed = directed
        self.m_graph = {}
        self.m_h = {}
        
    
    def __str__(self):
        out = ""
        for k,v in self.m_graph.items():
            out = out + "node " + str(k) + ": " + str(v)
            print(out)
            
            
    def get_node_by_name(self, name):
        search_node = Node(name)
        for node in self.m_nodes:
            if node == search_node:
                return node
        
        return None
    
    
    def add_edge(self, node1, node2, weight):
        n1 = Node(node1)
        n2 = Node(node2)
        if n1 not in self.m_nodes:
            n1_id = len(self.m_nodes)
            n1.setId(n1_id)
            self.m_nodes.append(n1)
            self.m_graph[node1] = []
            
        if n2 not in self.m_nodes:
            n2_id = len(self.m_nodes)
            n2.setId(n2_id)
            self.m_nodes.append(n2)
            self.m_graph[node2] = []
            
        self.m_graph[node1].append((node2, weight))