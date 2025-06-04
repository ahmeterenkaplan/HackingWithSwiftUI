import Cocoa

// Bu seferki zorluk, dizelerden oluşan bir dizi oluşturmak, ardından dizideki öğe sayısını ve ayrıca dizideki benzersiz öğe sayısını yazdıran bir kod yazmaktır.
var arr:[String]=["a","b","c","a","b","c","d","a","b","c"]
var countall=arr.count
print(countall)

var sett=Set(arr)
var countdistinct=sett.count
print(countdistinct)
