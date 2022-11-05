"""
    This tool generates random benches
"""
import random

gate_lists = ["AND", "NAND", "OR", "NOR", "NOT", "BUFF", "XOR", "XNOR"]
seed = random.randint(0, 123456789)

if __name__ == "__main__":
    # Ask for number of inputs
    n_inputs = int(input("Number of inputs: "))
    # Ask for number of levels
    n_levels = int(input("Number of levels: "))
    # Ask for max number of gate per level
    n_gates_per_level = int(input("Number of gates per levels: "))

    # Generate output filename using the hash of a random seed and features of the circuit
    filename = "c"+str(hash(seed + n_inputs + n_levels + n_gates_per_level)) + ".bench"

    # Nodes
    node_list = []

    with open(filename, "w") as f:
        # Update node list with inputs
        for i in range(0, n_inputs):
            node_list.append(str(i))
            f.write(f"INPUT({i})\n")
        f.close()

    highest_node_ctr = n_inputs

    with open(filename, "a") as f:
        # For each level
        for i in range(0, n_levels):
            new_nodes = []
            for j in range(0,n_gates_per_level):
                # pick a random gate
                picked_gate = random.choice(gate_lists)
                if (picked_gate == "BUFF" or picked_gate == "NOT"):
                    f.write(f"{highest_node_ctr} = {picked_gate}({random.choice(node_list)})\n")
                else:
                    f.write(f"{highest_node_ctr} = {picked_gate}({random.choice(node_list)}, {random.choice(node_list)})\n")
                # Add the new node to the buffer
                new_nodes.append(str(highest_node_ctr))
                # Increase to get a new node name for the next node
                highest_node_ctr += 1
            # add the new nodes to the node list 
            node_list.extend(new_nodes)
        # Write the last output
        f.write(f"OUTPUT({highest_node_ctr-1})\n")
        f.close()
            
