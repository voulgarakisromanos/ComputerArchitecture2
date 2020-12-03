CPU Clock: 1GHz
execution time:
sim_seconds: 0.161337

system.clk_domain.clock: 1000
system.cpu_clk_domain.clock: 1000

CPU Clock: 2GHz
execution time:
sim_seconds: 0.084159

system.clk_domain.clock: 1000
system.cpu_clk_domain.clock: 500

System clock is needed to synchronize all simulation components. Generally all other clocks must be a multiple of the System Clock. Hence usually CPU Clock is higher than System Clock (in terms of frequency). In our case System clock is timed at 1GHz and CPU Clock at 2GHz.

config.json @2 GHz
clk_domain: 1000
cpu_clk_domain: 500

CPU Cluster is a group of CPUs that have the same CPU clock, Cache, memory bandwidth CPU-to-CPU communication bandwidth, I/O bandwidth and interconnect bandwidth. Since cpu_clk_domain is 2 GHz, the cpu cluster should be at 2GHz. Hence every CPU in CPU cluster must also be timed at 2GHz. So the CPU will be 2GHz.
