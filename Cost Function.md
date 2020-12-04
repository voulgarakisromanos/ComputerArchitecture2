# Συνάρτηση Κόστους

Το κόστος του υποσυστήματος μνήμης εξαρτάται από τις παραμέτρους:

* Μέγεθος Data Cache 
* Μέγεθος Instruction Cache 
* Μέγεθος L2 Cache 
* Instruction Cache Associativity 
* Data Cache Associativity 
* L2 Cache Associativity 
* Μέγεθος Cacheline 

Είναι προφανές ότι για μεγαλύτερα μεγέθη cache, cacheline και associativity το κόστος αυξάνεται. Είναι επίσης γνωστό, ότι η L1 είναι σημαντικά ακριβότερη της L2.
Για την υλοποίηση της συνάρτησης κόστους θεωρούμε πως τα κόστη των L1, L2 είναι ανεξάρτητα μεταξύ τους. Τελικά:

$ Cost = ( Size_{L1} + Size_{L2} ) Size_{Cacheline} $
