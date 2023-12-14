from Graph import Graph


def main():
    g = Graph()
    
    g.add_edge("s", "e", 2)
    g.add_edge("s", "a", 2)
    g.add_edge("a", "b", 2)
    g.add_edge("e", "f", 2)
    g.add_edge("b", "c", 2)
    g.add_edge("f", "g", 2)
    g.add_edge("c", "d", 2)
    g.add_edge("g", "t", 2)
    g.add_edge("d", "t", 2)