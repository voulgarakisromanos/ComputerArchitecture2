# Συνάρτηση Κόστους

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
* L1i<sub>cost</sub> = (Μέγεθος L1 instruction Cache)&#8226;(L1 size cost coefficient)  + (L1 instructtion Cache Associativity)&#8226;(L1 Associativity cost coefficient) 
* L1d<sub>cost</sub> = (Μέγεθος L1 data Cache)&#8226;(L1 size cost coefficient)  + (L1 data Cache Associativity)&#8226;(L1 Associativity cost coefficient) 

Μένει να προσδιορίσουμε μια τιμή για τις παραπάνω παραμέτρους. Μια συνήθης διάταξη είναι 32kB+32kB L1 cache (instruction + data) και 256kB L2 cache (πχ Intel Core i7-10700 κ.α). Αν υποθέσουμε ότι L1 και L2 cache κοστίζουν το ίδιο συνολικά,  (L1 size cost coefficient) = 5&#8226;(L2 size cost coefficient) = 5. Με βάση την από κάτω πηγή γίνεται η υπόθεση ότι (L2 Associativity cost coefficient) = (L1 Associativity cost coefficient) = 3.


# Βελτιστοποίηση σχέσης απόδοσης-κόστους
Για κάθε ένα από τα benchmark, με δεδομένη την συνάρτηση κόστους που υλοποιήθηκε και τα διαγράμματα που παρουσιάστηκαν για το ερώτημα 2, υλοποιήσαμε μία προσομοίωση με χαρακτηριστικά κατάλληλα ώστε να παίρνουμ την μέγιστη απόδοση σε σχέση με το κόστος.

## Libm
Στο παρακάτω διάγραμμα παρατηρούμε τη μεταβολή του CPI σε σχέση με κάθε ένα απο τα χαρακτηριστικά των προσομοιώσεων.
![][Libm]

Επιλέγοντας:
| Μέγεθος Icache | Μέγεθος DCache | Μέγεθος Cache Line | Μέγεθος L2 Cache |  ICache assoc |  DCache assoc |    L2 assoc    |
|:--------------:|:--------------:|:------------------:|:----------------:|:-------------:|:-------------:|:--------------:|
|      16 Kb     |     128 Kb     |        128 B       |      1024 Kb     | Direct-mapped | Direct-mapped | Dirrect-mapped |

Παίρνουμε:
|    CPI   | DCache miss rate | ICache miss rate | L2 miss rate |
|:--------:|:----------------:|:----------------:|:------------:|
| 2.438943 |     0.030965     |     0.014042     |   0.938396   |

Αν και το CPI μικραίνει για μεγαλύτερο μέγεθος Icache, L2 cache και για two-way associativity σε όλες τις cache, θεωρήσαμε ότι αυτή η μείωση αυξάνει δυσανάλογα το κόστος και συνεπώς επιλέχθηκαν οι τιμές που αναφέραμε.
Το σχετικό κόστος αυτής της υλοποίησης προκύπτει 1753.

## Bzip
Στο παρακάτω διάγραμμα παρατηρούμε τη μεταβολή του CPI σε σχέση με κάθε ένα απο τα χαρακτηριστικά των προσομοιώσεων.
![][Bzip]

Επιλέγοντας:
| Μέγεθος Icache | Μέγεθος DCache | Μέγεθος Cache Line | Μέγεθος L2 Cache |  ICache assoc |  DCache assoc |    L2 assoc    |
|:--------------:|:--------------:|:------------------:|:----------------:|:-------------:|:-------------:|:--------------:|
|      16 Kb     |     32 Kb      |        64 B        |      128 Kb      | Direct-mapped | Direct-mapped | Dirrect-mapped |


Παίρνουμε:
|    CPI   | DCache miss rate | ICache miss rate | L2 miss rate |
|:--------:|:----------------:|:----------------:|:------------:|
| 7.936775 |     0.151474     |     0.003364     |   0.997542   |

Για κάποιες από τις τιμές προκύπτει μικρότερο CPI. Για παράδειγμα για μέγεθος L2 2048 Kb παίρνουμε οριακά μικρότερο CPI αλλά το L2<sub>cost</sub> γίνεται 16 φορές μεγαλύτερο. Συνεπώς επιλέγεται μέγεθος L2 128 Kb.
Το σχετικό κόστος αυτής της υλοποίησης προκύπτει 377.


## Sjeng
Στο παρακάτω διάγραμμα παρατηρούμε τη μεταβολή του CPI σε σχέση με κάθε ένα απο τα χαρακτηριστικά των προσομοιώσεων.
![][Sjeng]

Επιλέγοντας:
| Μέγεθος Icache | Μέγεθος DCache | Μέγεθος Cache Line | Μέγεθος L2 Cache |  ICache assoc |  DCache assoc |    L2 assoc    |
|:--------------:|:--------------:|:------------------:|:----------------:|:-------------:|:-------------:|:--------------:|
|      16 Kb     |     128 Kb     |        32 B        |       128 Kb     | Direct-mapped |    two-way    | Dirrect-mapped |

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
 
## MCF
Στο παρακάτω διάγραμμα παρατηρούμε τη μεταβολή του CPI σε σχέση με κάθε ένα απο τα χαρακτηριστικά των προσομοιώσεων.
![][MCF]

Επιλέγοντας:
| Μέγεθος Icache | Μέγεθος DCache | Μέγεθος Cache Line | Μέγεθος L2 Cache |  ICache assoc |  DCache assoc |    L2 assoc    |
|:--------------:|:--------------:|:------------------:|:----------------:|:-------------:|:-------------:|:--------------:|
|      64 Kb     |     64 Kb      |       128 B        |      128 Kb      |    two-way    | Direct-mapped | Dirrect-mapped |

Παίρνουμε:
|    CPI   | DCache miss rate | ICache miss rate | L2 miss rate |
|:--------:|:----------------:|:----------------:|:------------:|
| 1.550964 |     0.008752     |     0.001386     |   0.874144   |

με σχετικό κόστος 780.
 
 
# Σχετική βιβλιογραφία:
1. https://esc.fnwi.uva.nl/thesis/centraal/files/f1720749465.pdf
2. https://www.cpu-world.com/CPUs/Core_i7/Intel-Core%20i7%20i7-10700K.html



[Libm]: https://i.ibb.co/HNJtb9Z/Libm.jpg
[Bzip]: https://i.ibb.co/xgF0THS/Bzip.jpg
[MCF]: https://i.ibb.co/FzQC0Ys/MCF.jpg
[Sjeng]: https://i.ibb.co/r0jWzXh/Sjeng.jpg

