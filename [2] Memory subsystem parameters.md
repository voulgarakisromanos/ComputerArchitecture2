# **Default simulation**

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

## Μέγεθος Instruction Cache
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


## Μέγεθος Data Cache
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


## Μέγεθος L2 Cache
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



## Μέγεθος Cache Line
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




## Instruction Cache Associativity
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


## Data Cache Associativity
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

## L2 Cache Associativity
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



## lbm
  #### Σταδιακή αύξηση μεγέθους της Instruction Cache
  Παρατηρείται οριακή μείωση του miss rate στην I-cache ενώ τα υπόλοιπα χαρακτηριστικά της προσομοίωσης δεν έχουν σημαντικές διαφορές.
  
  Αυτό είναι λογικό αφού μεγαλύτερη I-cache συνεπάγεται χαμηλότερη πιθανότητα να μη βρεθεί κάποια εντολή όταν ζητηθεί από την cache.

  #### Σταδιακή αύξηση μεγέθους της Data Cache
  Παρατηρούμε μείωση του CPI και του miss rate στην D-cache
  
  #### Σταδιακή αύξηση μεγέθους της L2 Cache
  Δεν παρατηρούνται σημαντικές διαφορές 
  
  #### Instruction Cache Associativity = 2
  Μειώνεται το miss rate στην I-cache
  
  #### Data Cache Associativity = 2
  Μειώνεται το CPI, το miss rate στην D-cache και το miss rate στην L2 αυξάνεται
  
  #### L2 Cache Associativity = 1
  Δεν παρατηρούνται σημαντικές διαφορές 
  
  #### Σταδιακή αύξηση της Cache line
  Παρατηρείται δραματική μείωση στο CPI όσο αυξάνεται το block. Αυτό είναι απολύτως λογικό καθώς με μεγαλύτερο block εξασφαλίζουμε ότι θα έχουμε λιγότερα misses.
  
  Γενικότερα παρατηρούμε πως για μείωση του miss-rate στην Data Cache έχουμε ταυτόχρονα μείωση του CPI
  
  Με τις εξής ρυθμίσεις:
  ```sh
--cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=1 --l1d_assoc=2 --l2_assoc=2 --cacheline_size=128 --cpu-clock=2GHz 
  ```
  Πετύχαμε  CPI = 2.512999  από  το baseline του 3.456934 
  
  
## Bzip
  #### Σταδιακή αύξηση μεγέθους της Instruction Cache
  Παρατηρείται οριακή μείωση του miss rate στην I-cache. Το CPI έχει αυξομειώσεις με μικρότερη τιμή για μέγεθος 16Kb. Ταυτόχρονα αυξάνεται το miss rate στην L2.
  
  #### Σταδιακή αύξηση μεγέθους της Data Cache
  Το CPI είναι πολύ μεγάλο για όλες τις τιμές. Η μικρότερη τιμή είναι για 32 Kb. Αντίθετα, το miss rate της D-cache μειώνεται.
  
  #### Σταδιακή αύξηση μεγέθους της L2 Cache
  Για τιμές μεγαλύτερες του 256 Kb το CPI μειώνεται σημαντικά.
  
  #### Instruction Cache Associativity = 2
  Μικρή αύξηση του CPI
  
  #### Data Cache Associativity = 2
  Μικρή αύξηση του CPI.
  
  #### L2 Cache Associativity = 1
  Μικρή αύξηση του CPI.
  
  #### Σταδιακή αύξηση της Cache line
  Παρατηρείται ακόμα μεγαλύτερη μείωση στο CPI όσο αυξάνεται το block, σε σχέση με το lbm, εκτός από την αύξηση από 1 MB σε 2 MB. Εκεί αυξάνεται ελαφρώς το CPI. 
  
  
  

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
    
  
