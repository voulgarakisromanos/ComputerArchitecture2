# ComputerArchitecture2

#Μέρος 1
1.
L1 data cache : 64 KB  SetAssociative  assoc=2 block_size=64
L1 instruction cache  : 32 KB 32768 SetAssociative assoc=2 block_size=64 
L2 cache : 2 MB SetAssociative assoc=8 block_size=64

Bzip:
sim_seconds                                  0.086670
system.cpu.icache.overall_miss_rate::total     0.000060
system.cpu.dcache.overall_miss_rate::total     0.014114
system.l2.overall_miss_rate::total           0.277825
system.cpu.cpi                               1.733406

/home/romanos/Desktop/assistant/specmcf/stats.txt:sim_seconds                                  0.056126                       # Number of seconds simulated
/home/romanos/Desktop/assistant/specsjeng/stats.txt:sim_seconds                                  0.513954                       # Number of seconds simulated
/home/romanos/Desktop/assistant/speclibm/stats.txt:sim_seconds                                  0.175091                       # Number of seconds simulated
/home/romanos/Desktop/assistant/spechmmer/stats.txt:sim_seconds                                  0.000058                       # Number of seconds simulated

/home/romanos/Desktop/assistant/specmcf/stats.txt:system.cpu.icache.overall_miss_rate::total     0.000039                       # miss rate for overall accesses
/home/romanos/Desktop/assistant/specsjeng/stats.txt:system.cpu.icache.overall_miss_rate::total     0.000015                       # miss rate for overall accesses
/home/romanos/Desktop/assistant/speclibm/stats.txt:system.cpu.icache.overall_miss_rate::total     0.000103                       # miss rate for overall accesses
/home/romanos/Desktop/assistant/spechmmer/stats.txt:system.cpu.icache.overall_miss_rate::total     0.094783                       # miss rate for overall accesses

/home/romanos/Desktop/assistant/specmcf/stats.txt:system.cpu.dcache.overall_miss_rate::total     0.002124                       # miss rate for overall accesses
/home/romanos/Desktop/assistant/specsjeng/stats.txt:system.cpu.dcache.overall_miss_rate::total     0.121831                       # miss rate for overall accesses
/home/romanos/Desktop/assistant/speclibm/stats.txt:system.cpu.dcache.overall_miss_rate::total     0.060971                       # miss rate for overall accesses
/home/romanos/Desktop/assistant/spechmmer/stats.txt:system.cpu.dcache.overall_miss_rate::total     0.052195                       # miss rate for overall accesses

/home/romanos/Desktop/assistant/specmcf/stats.txt:system.cpu.cpi                               1.122521                       # CPI: cycles per instruction
/home/romanos/Desktop/assistant/specsjeng/stats.txt:system.cpu.cpi                              10.279078                       # CPI: cycles per instruction
/home/romanos/Desktop/assistant/speclibm/stats.txt:system.cpu.cpi                               3.501825                       # CPI: cycles per instruction
/home/romanos/Desktop/assistant/spechmmer/stats.txt:system.cpu.cpi                               7.665585                       # CPI: cycles per instruction

/home/romanos/Desktop/assistant/specmcf/stats.txt:system.l2.overall_miss_rate::total           0.717367                       # miss rate for overall accesses
/home/romanos/Desktop/assistant/specsjeng/stats.txt:system.l2.overall_miss_rate::total           0.999945                       # miss rate for overall accesses
/home/romanos/Desktop/assistant/speclibm/stats.txt:system.l2.overall_miss_rate::total           0.999946                       # miss rate for overall accesses
/home/romanos/Desktop/assistant/spechmmer/stats.txt:system.l2.overall_miss_rate::total           0.916667                       # miss rate for overall accesses

/home/romanos/Desktop/gem5/spec_results/specmcf-CPU-CLK=2GHz/stats.txt:system.clk_domain.clock                          1000                                    
/home/romanos/Desktop/gem5/spec_results/specsjeng-CPU-CLK=2GHz/stats.txt:system.clk_domain.clock                          1000                       
/home/romanos/Desktop/gem5/spec_results/speclibm-CPU-CLK=2GHz/stats.txt:system.clk_domain.clock                          1000                                
/home/romanos/Desktop/gem5/spec_results/specbzip-CPU-CLK=2GHz/stats.txt:system.clk_domain.clock                          1000                                                      
/home/romanos/Desktop/gem5/spec_results/spechmmer-CPU-CLK=2GHz/stats.txt:system.clk_domain.clock                          1000        

system.cpu_clk_domain.clock 500  αντι για το entry της εργασιας

sim_seconds                                  0.165948                       # Number of seconds simulated
