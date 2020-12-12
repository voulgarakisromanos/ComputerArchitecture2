# Αρχιτεκτονική Υπολογιστών Εργασία 2

# Βουλγαράκης Ρωμανός | Μουστάκας Βασίλειος-Παναγιώτης
# 9383 | 9424




# Ερώτημα 1.1
#### **L1 data cache**
| Μέγεθος | Associativity | Μέγεθος Block |
|:-------:|:-------------:|:-------------:|
|  64 Kb  |       2       |       64      |
#### **L1 instruction cache** 
| Μέγεθος | Associativity | Μέγεθος Block |
|:-------:|:-------------:|:-------------:|
|  32 Kb  |       2       |       64      |
#### **L2 cache** 
| Μέγεθος | Associativity | Μέγεθος Block |
|:-------:|:-------------:|:-------------:|
| 2048 Kb |       2       |       64      |



# Ερώτημα 1.2

## bzip


| Χρόνος Εκτέλεσης |    CPI   | D-Cache miss rate | I-cache miss rate | L2 miss rate |
|:----------------:|:--------:|:-----------------:|:-----------------:|:------------:|
|     0.086670     | 1.733406 |      0.014114     |      0.000060     |    0.277825  |

## mcf


| Χρόνος Εκτέλεσης |    CPI   | D-Cache miss rate | I-cache miss rate | L2 miss rate |
|:----------------:|:--------:|:-----------------:|:-----------------:|:------------:|
|     0.056126     | 1.122521 |      0.002124     |      0.000039     |    0.717367  |



## sjeng


| Χρόνος Εκτέλεσης |    CPI   | D-Cache miss rate | I-cache miss rate | L2 miss rate |
|:----------------:|:--------:|:-----------------:|:-----------------:|:------------:|
|     0.513954     | 10.279078 |      0.121831    |      0.000015     |    0.999945  |

## libm


| Χρόνος Εκτέλεσης |    CPI   | D-Cache miss rate | I-cache miss rate | L2 miss rate |
|:----------------:|:--------:|:-----------------:|:-----------------:|:------------:|
|     0.175091     | 3.501825 |      0.060971     |      0.000103     |   0.999946   |

Κάποια benchmark φαίνεται να είναι πιο απαιτητικά ή απρόβλεπτα. Σε κάποια από αυτά παρατηρείται μεγαλύτερος χρόνο εκτέλεσης, μεγαλύτερο CPI, μεγαλύτερα miss rates ειδικά στις L1 data και L2 Cache.


# Ερώτημα 1.3

## **bzip**

### **stats.txt**

#### **CPU Clock: 1GHz**


| Χρόνος Εκτέλεσης |      System Clock     |       CPU Clock        |
|:----------------:|:---------------------:|:----------------------:|
|   0.165948 sec   | 1000 (Period in ticks)| 1000 (Period in ticks) |



#### **CPU Clock: 2GHz**


| Χρόνος Εκτέλεσης |      System Clock     |       CPU Clock        |
|:----------------:|:---------------------:|:----------------------:|
|   0.086670 sec   | 1000 (Period in ticks)|  500 (Period in ticks) |


Το system clock χρειάζεται για να συγχρονίζει όλα τα κομμάτια της προσομοίωσης. Γενικά, οι συχνότητες όλων των ρολογιών πρέπει να είναι πολλαπλάσιες της συχνότητας του system clock. Στην περίπτωσή μας η συχνότητα του system clock είναι 1GHz και η συχνότητα του CPU clock 2GHz.


### **config.json @2 GHz**

clk_domain: 1000

cpu_clk_domain: 500

Το CPU Cluster είναι ένα γκρουπ από μοντέλα CPU τα οποία έχουν ίδιο ρολόι. Συνεπώς, ο επεξεργαστής που θα προστεθεί θα πρέπει να έχει την ίδια συχνότητα (σε αυτήν την περίπτωση 2GHz).

## **mcf**

### **stats.txt**

#### **CPU Clock: 1GHz**


| Χρόνος Εκτέλεσης |      System Clock     |       CPU Clock        |
|:----------------:|:---------------------:|:----------------------:|
|   0.109954 sec   | 1000 (Period in ticks)| 1000 (Period in ticks) |

#### **CPU Clock: 2GHz**



| Χρόνος Εκτέλεσης |      System Clock     |       CPU Clock        |
|:----------------:|:---------------------:|:----------------------:|
|   0.056126 sec   | 1000 (Period in ticks)|  500 (Period in ticks) |

### **config.json @2GHz**

clk_domain: 1000

cpu_clk_domain: 500

Το scaling στους χρόνους εκτέλεσης των benchmarks είναι σχεδόν ταυτόσημο με αυτό της συχνότητας του ρολογιού της CPU. Οι μικρές διαφορές που παρατηρούνται οφείλονται στο ότι η συχνότητα της CPU είναι μεγαλύτερη, άρα instruction και data accesses ζητούνται πιο συχνά. Ωστόσο, το ρολόι της RAM παραμένει το ίδιο, άρα η CPU αναγκάζεται να περιμένει συχνότερα από προηγουμένως.


# Ερώτημα 2

## **Default simulation**

Έχοντας ως στόχο τη μελέτη της επίδρασης κάθε παραμέτρου του υποσυστήματος μνήμης στην απόδοση του συστήματος, αποφασίστηκε να 
διατηρούνται σταθερές όλες οι παράμετροι, εκτός αυτής για την οποία δοκιμάζονται διάφορες τιμές. Οι default τιμές που δίνονται είναι:

* Μέγεθος Data Cache = 32 Kb
* Μέγεθος Instruction Cache = 64 Kb
* Μέγεθος L2 Cache = 512 Kb
* Instruction Cache Associativity = 1
* Data Cache Associativity = 1
* L2 Cache Associativity = 2
* Μέγεθος Cacheline = 64 Byte

Η συχνότητα του CPU clock επιλέχθηκε 2 GHz.

### Μέγεθος Instruction Cache
Τα μεγέθη της I-cache τα οποία εξετάστηκαν στις προσομοιώσεις είναι 16, 32, 64 και 128 Kb. Η επίδραση της σταδιακής αύξησης του μεγέθους της σε κάθε ένα από τα χαρακτηριστικά της προσομοίωσης φαίνεται στα ακόλουθα διαγράμματα.

#### CPI
![][ICS_CPI]

Παρατηρούμε μείωση του CPI στο benchmark mcf, ενώ στα υπόλοιπα παραμένει σχετικά σταθερό.

####  Data Cache Overall Miss-Rate
![][ICS_DCM]

Παρατηρούμε ότι σε όλα τα benchmarks δεν επηρεάζει η αύξηση μεγέθους της I-cache το miss-rate στην D-cache.

####  Instruction Cache Overall Miss-Rate
![][ICS_ICM]

Παρατηρούμε μείωση του miss-rate στην I-cache για όλα τα benchmarks και ειδικότερα για το mcf όπου η μείωση είναι ραγδαία.

####  L2 Cache Overall Miss-Rate
![][ICS_L2M]

Το miss-rate παραμένει σταθερό στα bzip και sjeng ενώ υπάρχει αύξηση στο libm και ραγδαία αύξηση στο mcf


### Μέγεθος Data Cache
Τα μεγέθη της D-cache τα οποία εξετάστηκαν στις προσομοιώσεις είναι 16, 32, 64 και 128 Kb. Η επίδραση της σταδιακής αύξησης του μεγέθους της σε κάθε ένα από τα χαρακτηριστικά της προσομοίωσης φαίνεται στα ακόλουθα διαγράμματα.

#### CPI
![][DCS_CPI]

Παρατηρούμε μια πολύ μικρή μείωση του CPI στα 3 benchmarks libm, sjeng και mcf.

####  Data Cache Overall Miss-Rate
![][DCS_DCM]

Παρατηρούμε μείωση του miss-rate στα libm, sjeng και mcf.

####  Instruction Cache Overall Miss-Rate
![][DCS_ICM]

Παρατηρούμε ότι σε όλα τα benchmarks δεν επηρεάζει η αύξηση μεγέθους της D-cache το miss-rate στην I-cache.

####  L2 Cache Overall Miss-Rate
![][DCS_L2M]

Το miss-rate παραμένει σταθερό στο bzip. Για sjeng και mcf υπάρχει μια μικρή αύξηση από τα 16 Kb στα 32 Kb, ενώ για libm παρατηρούμε αύξηση σε όλα τα βήματα.


### Μέγεθος L2 Cache
Τα μεγέθη της L2 cache τα οποία εξετάστηκαν στις προσομοιώσεις είναι 128, 256, 512, 1024 και 2048 Kb. Η επίδραση της σταδιακής αύξησης του μεγέθους της σε κάθε ένα από τα χαρακτηριστικά της προσομοίωσης φαίνεται στα ακόλουθα διαγράμματα.

#### CPI
![][L2S_CPI]

To CPI παραμένει σταθερό στα mcf και sjeng. Στο bzip από τα 128 Kb στα 256 Kb έχουμε αύξηση και στην συνέχεια μειώνεται, ενώ για libm έχουμε μείωση.

####  Data Cache Overall Miss-Rate
![][L2S_DCM]

Το miss-rate της D-cache παραμένει σταθερό σε όλα τα benchmarks, εκτός από το bzip όπου έχουμε αύξηση από τα 128 Kb στα 256 Kb.

####  Instruction Cache Overall Miss-Rate
![][L2S_ICM]

Παρατηρούμε ότι σε όλα τα benchmarks δεν επηρεάζει η αύξηση μεγέθους της L2 cache το miss-rate στην I-cache.

####  L2 Cache Overall Miss-Rate
![][L2S_L2M]

Παρατηρούμε ότι σε όλα τα benchmarks δεν επηρεάζει η αύξηση μεγέθους της L2 cache το miss-rate στην L2 cache.



### Μέγεθος Cache Line
Τα μεγέθη της Cache Line τα οποία εξετάστηκαν στις προσομοιώσεις είναι 16, 32, 64 και 128 B. Η επίδραση της σταδιακής αύξησης του μεγέθους της σε κάθε ένα από τα χαρακτηριστικά της προσομοίωσης φαίνεται στα ακόλουθα διαγράμματα.

#### CPI
![][CLS_CPI]

Παρατηρούμε ραγδαία μείωση του CPI στα benchmark bzip και libm. Στο mcf υπάρχει μείωση σε αντίθεση με το sjeng που δείχνει να αυξάνεται.

####  Data Cache Overall Miss-Rate
![][CLS_DCM]

Παρατηρούμε ραγδαία μείωση του miss-rate στα benchmark bzip και libm. Στο mcf υπάρχει μείωση σε αντίθεση με το sjeng που δείχνει να αυξάνεται.

####  Instruction Cache Overall Miss-Rate
![][CLS_ICM]

Παρατηρούμε αύξηση του miss-rate στην I-cache για τα libm και sjeng. Στο bzip υπάρχει μείωση και στο mcf σημαντική μείωση μέχρι τα 64 B ενώ μετά αυξάνεται. 

####  L2 Cache Overall Miss-Rate
![][CLS_L2M]

Εκτός του bzip όπου το miss-rate παραμένει σταθερό σε όλα τα άλλα έχουμε σημαντική μείωση.




### Instruction Cache Associativity
Εξετάστηκαν δύο περιπτώσεις για Instruction Cache Associativity. Η πρώτη είναι direct-mapped και η δεύτερη two-way.

#### CPI
![][ICA_CPI]

Το CPI για two-way associativity παρουσιάζει μια μικρή μείωση στο mcf.

####  Data Cache Overall Miss-Rate
![][ICA_DCM]

Το miss rate στην D-cache παραμένει το ίδιο για όλα τα benchmarks.

####  Instruction Cache Overall Miss-Rate
![][ICA_ICM]

Παρατηρούμε μείωση του miss-rate της I-cache για όλα τα benchmarks και ιδιαίτερα για το mcf. 

####  L2 Cache Overall Miss-Rate
![][ICA_L2M]

Υπάρχει αύξηση του miss-rate της L2 στο mcf.


### Data Cache Associativity
Εξετάστηκαν δύο περιπτώσεις για Instruction Cache Associativity. Η πρώτη είναι direct-mapped και η δεύτερη two-way.

#### CPI
![][DCA_CPI]

Το CPI για two-way associativity παρουσιάζει μείωση στα libm, sjeng και mcf.

####  Data Cache Overall Miss-Rate
![][DCA_DCM]

Το miss-rate της D-cache για two-way associativity παρουσιάζει μείωση στα libm, sjeng και mcf.

####  Instruction Cache Overall Miss-Rate
![][DCA_ICM]

Tο miss-rate της I-cache παραμένει σταθερό.

####  L2 Cache Overall Miss-Rate
![][DCA_L2M]

Υπάρχει αύξηση του miss-rate στα libm, mcf και ιδιαίτερα στο sjeng.

### L2 Cache Associativity
Εξετάστηκαν δύο περιπτώσεις για Instruction Cache Associativity. Η πρώτη είναι direct-mapped και η δεύτερη two-way.

#### CPI
![][L2A_CPI]

#### Data Cache Overall Miss-Rate
![][L2A_DCM]


#### Instruction Cache Overall Miss-Rate
![][L2A_ICM]


#### L2 Cache Overall Miss-Rate
![][L2A_L2M]

Συνολικά, για L2 με two-way associativity δεν παρατηρούνται σημαντικές αλλαγές.


# Ερώτημα 3 
  
## Συνάρτηση Κόστους

Το κόστος του υποσυστήματος μνήμης εξαρτάται από τις παραμέτρους:

* Μέγεθος Data Cache 
* Μέγεθος Instruction Cache 
* Μέγεθος L2 Cache 
* Instruction Cache Associativity 
* Data Cache Associativity 
* L2 Cache Associativity 
* Μέγεθος Cache line 

Είναι προφανές ότι για μεγαλύτερα μεγέθη cache, cacheline και associativity το κόστος αυξάνεται. Είναι επίσης γνωστό, ότι η L1 είναι σημαντικά ακριβότερη της L2.
Για την υλοποίηση της συνάρτησης κόστους θεωρούμε πως τα κόστη των L1, L2 είναι ανεξάρτητα μεταξύ τους. Τελικά:

Κόστος = (L1i<sub>cost</sub>+L1d<sub>cost</sub>+L2<sub>cost</sub>)

Με:
* L2<sub>cost</sub> = (Μέγεθος L2 Cache)&#8226;(L2 size cost coefficient) + (L2 Cache Associativity)&#8226;(L2 Associativity cost coefficient)
* L1i<sub>cost</sub> = (Μέγεθος L1 instruction Cache)&#8226;(L1 size cost coefficient)  + (L1 instruction Cache Associativity)&#8226;(L1 Associativity cost coefficient) 
* L1d<sub>cost</sub> = (Μέγεθος L1 data Cache)&#8226;(L1 size cost coefficient)  + (L1 data Cache Associativity)&#8226;(L1 Associativity cost coefficient) 

Μένει να προσδιορίσουμε μια τιμή για τις παραπάνω παραμέτρους. Μια συνήθης διάταξη είναι 32kB+32kB L1 cache (instruction + data) και 256kB L2 cache (πχ Intel Core i7-10700 κ.α). Αν υποθέσουμε ότι L1 και L2 cache κοστίζουν το ίδιο συνολικά,  (L1 size cost coefficient) = 5&#8226;(L2 size cost coefficient) = 5. Με βάση την από κάτω πηγή γίνεται η υπόθεση ότι (L2 Associativity cost coefficient) = (L1 Associativity cost coefficient) = 3.

### Σχετική βιβλιογραφία:
1. https://esc.fnwi.uva.nl/thesis/centraal/files/f1720749465.pdf
2. https://www.cpu-world.com/CPUs/Core_i7/Intel-Core%20i7%20i7-10700K.html


## Βελτιστοποίηση σχέσης απόδοσης-κόστους
Για κάθε ένα από τα benchmark, με δεδομένη την συνάρτηση κόστους που υλοποιήθηκε και τα διαγράμματα που παρουσιάστηκαν για το ερώτημα 2, υλοποιήσαμε μία προσομοίωση με χαρακτηριστικά κατάλληλα ώστε να παίρνουμ την μέγιστη απόδοση σε σχέση με το κόστος.

### Libm
Στο παρακάτω διάγραμμα παρατηρούμε τη μεταβολή του CPI σε σχέση με κάθε ένα απο τα χαρακτηριστικά των προσομοιώσεων.
![][Libm]

Επιλέγοντας:
| Μέγεθος Icache | Μέγεθος DCache | Μέγεθος Cache Line | Μέγεθος L2 Cache |  ICache assoc |  DCache assoc |    L2 assoc    |
|:--------------:|:--------------:|:------------------:|:----------------:|:-------------:|:-------------:|:--------------:|
|      16 Kb     |     128 Kb     |        128 B       |      1024 Kb     | Direct-mapped | Direct-mapped | Direct-mapped |

Παίρνουμε:
|    CPI   | DCache miss rate | ICache miss rate | L2 miss rate |
|:--------:|:----------------:|:----------------:|:------------:|
| 2.438943 |     0.030965     |     0.014042     |   0.938396   |

Αν και το CPI μικραίνει για μεγαλύτερο μέγεθος Icache, L2 cache και για two-way associativity σε όλες τις cache, θεωρήσαμε ότι αυτή η μείωση αυξάνει δυσανάλογα το κόστος και συνεπώς επιλέχθηκαν οι τιμές που αναφέραμε.
Το σχετικό κόστος αυτής της υλοποίησης προκύπτει 1753.

### Bzip
Στο παρακάτω διάγραμμα παρατηρούμε τη μεταβολή του CPI σε σχέση με κάθε ένα απο τα χαρακτηριστικά των προσομοιώσεων.
![][Bzip]

Επιλέγοντας:
| Μέγεθος Icache | Μέγεθος DCache | Μέγεθος Cache Line | Μέγεθος L2 Cache |  ICache assoc |  DCache assoc |    L2 assoc    |
|:--------------:|:--------------:|:------------------:|:----------------:|:-------------:|:-------------:|:--------------:|
|      16 Kb     |     32 Kb      |        64 B        |      128 Kb      | Direct-mapped | Direct-mapped | Direct-mapped |


Παίρνουμε:
|    CPI   | DCache miss rate | ICache miss rate | L2 miss rate |
|:--------:|:----------------:|:----------------:|:------------:|
| 7.936775 |     0.151474     |     0.003364     |   0.997542   |

Για κάποιες από τις τιμές προκύπτει μικρότερο CPI. Για παράδειγμα για μέγεθος L2 2048 Kb παίρνουμε οριακά μικρότερο CPI αλλά το L2<sub>cost</sub> γίνεται 16 φορές μεγαλύτερο. Συνεπώς επιλέγεται μέγεθος L2 128 Kb.
Το σχετικό κόστος αυτής της υλοποίησης προκύπτει 377.


### Sjeng
Στο παρακάτω διάγραμμα παρατηρούμε τη μεταβολή του CPI σε σχέση με κάθε ένα απο τα χαρακτηριστικά των προσομοιώσεων.
![][Sjeng]

Επιλέγοντας:
| Μέγεθος Icache | Μέγεθος DCache | Μέγεθος Cache Line | Μέγεθος L2 Cache |  ICache assoc |  DCache assoc |    L2 assoc    |
|:--------------:|:--------------:|:------------------:|:----------------:|:-------------:|:-------------:|:--------------:|
|      16 Kb     |     128 Kb     |        32 B        |       128 Kb     | Direct-mapped |    two-way    | Direct-mapped |

Παίρνουμε:
|    CPI   | DCache miss rate | ICache miss rate | L2 miss rate |
|:--------:|:----------------:|:----------------:|:------------:|
| 1.364891 |     0.005695     |     0.005667     |   0.983815   |

Παρατηρούμε ότι σε προηγούμενες προσομοιώσεις είχε επιτευχθεί ακόμα μικρότερο CPI. Συγκεκριμένα για:
| Μέγεθος Icache | Μέγεθος DCache | Μέγεθος Cache Line | Μέγεθος L2 Cache |  ICache assoc |  DCache assoc |    L2 assoc    |
|:--------------:|:--------------:|:------------------:|:----------------:|:-------------:|:-------------:|:--------------:|
|      64 Kb     |      32 Kb     |        64 B        |       512 Kb     | Direct-mapped | Direct-mapped | Direct-mapped  |

Παίρνουμε:
|    CPI   | DCache miss rate | ICache miss rate | L2 miss rate |
|:--------:|:----------------:|:----------------:|:------------:|
| 1.279277 |     0.003494     |     0.006114     |   0.839695   |

Με την συνάρτηση κόστους η οποία υλοποιήθηκε όμως για την πρώτη προσομοίωση το σχετικό κόστος προκύπτει 860 ενώ για την δεύτερη 1010. Συνεπώς θεωρούμε την πρώτη ως την ιδανική.
 
### MCF
Στο παρακάτω διάγραμμα παρατηρούμε τη μεταβολή του CPI σε σχέση με κάθε ένα απο τα χαρακτηριστικά των προσομοιώσεων.
![][MCF]

Επιλέγοντας:
| Μέγεθος Icache | Μέγεθος DCache | Μέγεθος Cache Line | Μέγεθος L2 Cache |  ICache assoc |  DCache assoc |    L2 assoc    |
|:--------------:|:--------------:|:------------------:|:----------------:|:-------------:|:-------------:|:--------------:|
|      64 Kb     |     64 Kb      |       128 B        |      128 Kb      |    two-way    | Direct-mapped | Direct-mapped |

Παίρνουμε:
|    CPI   | DCache miss rate | ICache miss rate | L2 miss rate |
|:--------:|:----------------:|:----------------:|:------------:|
| 1.550964 |     0.008752     |     0.001386     |   0.874144   |

με σχετικό κόστος 780.
 
# Κριτική
Η εργασία σε συγκεκριμένα σημεία (συνάρτηση κόστους) ήταν αρκετά ασαφής. Επίσης το benchmark hmmer δεν έτρεχε με την εντολή που υπήρχε στην εκφώνηση, πρόβλημα που συνάντησαν κι άλλοι φοιτητές. Συνολικά η εργασία σίγουρα βοηθάει στην κατανόηση του design space και του πως επηρεάζει ο κάθε παράγοντας την απόδοση του συστήματος, αλλά οι προσομοιώσεις είναι εξαιρετικά χρονοβόρες αν τρέξουν για 100.000.000 εντολές, γεγονός που δυσκολεύει την διεκπεραίωση της εργασίας, χωρίς όμως να έχει κάποια πρόσθετη διδακτική αξία. Τέλος, αξίζει να αναφερθεί και η αναμονή τριών (3) ωρών στο εργαστήριο. Πάντως σίγουρα εξοικειωθήκαμε με τη χρήση bash scripts για την αυτοματοποίηση των προσομοιώσεων.

[Libm]: https://i.ibb.co/HNJtb9Z/Libm.jpg
[Bzip]: https://i.ibb.co/xgF0THS/Bzip.jpg
[MCF]: https://i.ibb.co/FzQC0Ys/MCF.jpg
[Sjeng]: https://i.ibb.co/r0jWzXh/Sjeng.jpg
[ICS_CPI]: https://i.ibb.co/F4RjYJw/aris.jpg
[ICS_DCM]: https://i.ibb.co/wCDFJcF/ICS-DCM.jpg
[ICS_ICM]: https://i.ibb.co/s5t1KZj/ICS-ICM.jpg
[ICS_L2M]: https://i.ibb.co/B4gq2sN/ICS-L2M.jpg
[L2A_CPI]: https://i.ibb.co/PT7y2F8/L2A-CPI.jpg
[L2A_DCM]: https://i.ibb.co/HFS42Yh/L2A-DCM.jpg
[L2A_ICM]: https://i.ibb.co/yg355kn/L2A-ICM.jpg
[L2A_L2M]: https://i.ibb.co/H28CZ3W/L2A-L2M.jpg
[L2S_CPI]: https://i.ibb.co/dDYjD9Z/L2S-CPI.jpg
[L2S_DCM]: https://i.ibb.co/mzSbxr2/L2S-DCM.jpg
[L2S_ICM]: https://i.ibb.co/RNv1M8X/L2S-ICM.jpg
[L2S_L2M]: https://i.ibb.co/gVjfSdQ/L2S-L2M.jpg
[CLS_CPI]: https://i.ibb.co/cxr04tg/CLS-CPI.jpg
[CLS_DCM]: https://i.ibb.co/J3pxDhQ/CLS-DCM.jpg
[CLS_ICM]: https://i.ibb.co/88jmjMy/CLS-ICM.jpg
[CLS_L2M]: https://i.ibb.co/B28BssT/CLS-L2M.jpg
[DCA_CPI]: https://i.ibb.co/qpLWxWR/DCA-CPI.jpg
[DCA_DCM]: https://i.ibb.co/Lx4VhHk/DCA-DCM.jpg
[DCA_ICM]: https://i.ibb.co/1XvPVJ8/DCA-ICM.jpg
[DCA_L2M]: https://i.ibb.co/NSb8wNw/DCA-L2M.jpg
[DCS_CPI]: https://i.ibb.co/QdRQL9X/DCS-CPI.jpg
[DCS_DCM]: https://i.ibb.co/44ZKZ2v/DCS-DCM.jpg
[DCS_ICM]: https://i.ibb.co/yWswVS3/DCS-ICM.jpg
[DCS_L2M]: https://i.ibb.co/4j8TGvs/DCS-L2M.jpg
[ICA_CPI]: https://i.ibb.co/Rv992wd/ICA-CPI.jpg
[ICA_DCM]: https://i.ibb.co/kyFsvz9/ICA-DCM.jpg
[ICA_ICM]: https://i.ibb.co/GphkF6z/ICA-ICM.jpg
[ICA_L2M]: https://i.ibb.co/ynC3ybm/ICA-L2M.jpg


