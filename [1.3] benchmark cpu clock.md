# **bzip**

## **stats.txt**

### **CPU Clock: 1GHz**

Χρόνος εκτέλεσης:
sim_seconds 0.165948 # Number of seconds simulated

system.clk_domain.clock: 1000 # Clock period in ticks

system.cpu_clk_domain.clock: 1000 # Clock period in ticks

### **CPU Clock: 2GHz**

Χρόνος εκτέλεσης:
sim_seconds 0.086670 # Number of seconds simulated

system.clk_domain.clock: 1000 # Clock period in ticks

system.cpu_clk_domain.clock: 500 # Clock period in ticks

Το system clock χρειάζεται για να συγχρονίζει όλα τα κομμάτια της προσομοίωσης. Γενικά, οι συχνότητες όλων των ρολογιών πρέπει να είναι πολλαπλάσιες της συχνότητας του system clock. Στην περίπτωσή μας η συχνότητα του system clock είναι 1GHz και η συχνότητα του CPU clock 2GHz.


## **config.json @2 GHz**

clk_domain: 1000

cpu_clk_domain: 500

Το CPU Cluster είναι ένα γκρουπ από μοντέλα CPU τα οποία έχουν ίδιο ρολόι. Συνεπώς, ο επεξεργαστής που θα προστεθεί θα πρέπει να έχει την ίδια συχνότητα (σε αυτήν την περίπτωση 2GHz).

# **mcf**

## **stats.txt**

### **CPU Clock: 1GHz**

Χρόνος εκτέλεσης:
sim_seconds 0.109954 # Number of seconds simulated

system.clk_domain.clock: 1000 # Clock period in ticks

system.cpu_clk_domain.clock: 1000 # Clock period in ticks


### **CPU Clock: 2GHz**

Χρόνος εκτέλεσης:
sim_seconds: 0.056126 # Number of seconds simulated

system.clk_domain.clock 1000 # Clock period in ticks

system.cpu_clk_domain.clock 500 # Clock period in ticks

## **config.json @2GHz**

clk_domain: 1000

cpu_clk_domain: 500

Το scaling στους χρόνους εκτέλεσης των benchmarks είναι σχεδόν ταυτόσημο με αυτό της συχνότητας του ρολογιού της CPU. Οι μικρές διαφορές που παρατηρούνται οφείλονται στο ότι η συχνότητα της CPU είναι μεγαλύτερη, άρα instruction και data accesses ζητούνται πιο συχνά. Ωστόσο, το ρολόι της RAM παραμένει το ίδιο, άρα η CPU αναγκάζεται να περιμένει συχνότερα από προηγουμένως.
