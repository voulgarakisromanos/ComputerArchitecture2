# **specbzip**

## **stats.txt**

### **CPU Clock: 1GHz**

execution time:
sim_seconds 0.165948 # Number of seconds simulated

system.clk_domain.clock: 1000 # Clock period in ticks

system.cpu_clk_domain.clock: 1000 # Clock period in ticks

### **CPU Clock: 2GHz**

execution time:
sim_seconds 0.086670 # Number of seconds simulated

system.clk_domain.clock: 1000 # Clock period in ticks

system.cpu_clk_domain.clock: 500 # Clock period in ticks

System clock is needed to synchronize all simulation components. Generally all other clocks must be a multiple of the System Clock. Hence usually CPU Clock is higher than System Clock (in terms of frequency). In our case System clock is timed at 1GHz and CPU Clock at 2GHz.

## **config.json @2 GHz**

clk_domain: 1000

cpu_clk_domain: 500

CPU Cluster is a group of CPUs that have the same CPU clock, Cache, memory bandwidth CPU-to-CPU communication bandwidth, I/O bandwidth and interconnect bandwidth. Since cpu_clk_domain is 2 GHz, the cpu cluster should be at 2GHz. Hence every CPU in CPU cluster must also be timed at 2GHz. So the CPU will be 2GHz.


# **mcf**

## **stats.txt**

### **CPU Clock: 1GHz**

execution time:
sim_seconds 0.109954 # Number of seconds simulated

system.clk_domain.clock: 1000 # Clock period in ticks

system.cpu_clk_domain.clock: 1000 # Clock period in ticks


### **CPU Clock: 2GHz**

execution time:
sim_seconds: 0.056126 # Number of seconds simulated

system.clk_domain.clock 1000 # Clock period in ticks

system.cpu_clk_domain.clock 500 # Clock period in ticks

## **config.json @2GHz**

clk_domain: 1000

cpu_clk_domain: 500


The scaling for different CPU clocks is almost identical with minor differences. This happens because CPU clock is higher, thus CPU instruction and data accesses are requested more frequently. RAM clock though is the same, this means that memory access is not faster and the CPU will wait more often than previously. Consequently, CPI will be higher. Concluding, it is logical that the scaled execution time is a bit lower than the real one.
