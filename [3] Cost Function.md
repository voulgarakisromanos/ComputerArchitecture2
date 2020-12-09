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
