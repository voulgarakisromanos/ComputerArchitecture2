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

Κόστος = (L1<sub>cost</sub>+L2<sub>cost</sub>)&#8226;(Μέγεθος Cache Line)

Με:
* L1<sub>cost</sub> = [ (Μέγεθος Data Cache)&#8226;(Data Cache Associativity) + (Μέγεθος Instruction Cache)&#8226;(Instruction Cache Associativity) ]<sup>2</sup>
