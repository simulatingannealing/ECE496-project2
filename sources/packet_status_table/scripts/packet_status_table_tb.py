import numpy as np
import random as r

def simulate_BPF_outputs(num_packets, circular_buffer_size):
    
    def generate_packet_status_from_BPFs(size):
        packet_status = []
        for i in range(size):
            packet_status.append(r.randint(0, 1))
        return packet_status
    
    def generate_packet_indices_from_BPFs(num_packets, circular_buffer_size):
        # tag (t + circular_buffer_size) can't appear until circular_buffer_size number of another tags are generated 
        packet_indices = []
        one_packet_tags_group = list(range(0, circular_buffer_size))
        num_steps = num_packets // circular_buffer_size
        remainder = num_packets % circular_buffer_size
        # generate the packet indices
        incr = 0
        for i in range(num_steps):
            r.shuffle(one_packet_tags_group)
            packet_indices += [x+incr for x in one_packet_tags_group]
            incr += circular_buffer_size
        remaining_list = [x+incr for x in list(range(0, circular_buffer_size))[:remainder]]
        r.shuffle(remaining_list)
        packet_indices += remaining_list
        return packet_indices
    
    packet_status = generate_packet_status_from_BPFs(num_packets)
    packet_indices = generate_packet_indices_from_BPFs(num_packets, circular_buffer_size)
    packet_status_in_real_order = []
    for index in packet_indices:
        packet_status_in_real_order.append(packet_status[index])
        
    print(packet_status)
    print(packet_indices)
    print(packet_status_in_real_order)
    
    # write to a file
    print("Wrting a file ...")
    f = open("tb_data.mem", "a")
    # write the titles
    f.write("packet_status\tpacket_indices\tpacket_status_in_real_order\n")
    # write the data
    for i in range(num_packets):
        f.write(str(packet_status[i]))
        f.write("\t")
        f.write(str(packet_indices[i]))
        f.write("\t")
        f.write(str(packet_status_in_real_order[i]))
        f.write("\n")
    f.close()
    print("Wrting a file done !")
    
simulate_BPF_outputs(50, 50)
    
