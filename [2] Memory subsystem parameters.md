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

## libm
  #### Σταδιακή αύξηση μεγέθους της Instruction Cache
  Παρατηρείται οριακή μείωση του miss rate στην I-cache ενώ τα υπόλοιπα χαρακτηριστικά της προσομοίωσης δεν έχουν σημαντικές διαφορές.

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
  
## bzip
