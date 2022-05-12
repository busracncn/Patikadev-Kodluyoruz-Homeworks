[7, 5, 1, 8, 3, 6, 0, 9, 4, 2] dizisinin Binary-Search-Tree aşamalarını yazınız.

Örnek: root x'dir. root'un sağından y bulunur. Solunda z bulunur vb.


root = 7


5, 7'den küçük olduğu için sağında bulunur.

      7
    5

1, 7 ve 5'ten küçüktür. İkisininde solunda bulunur.

        7
      5 
    1
    
 8, 7'den büyüktür. Sağında yer alır.
 
          7
       5     8
    1  
   
 3, 7'nin ve 5'in solunda 1'in sağında bulunur.
 
               7
            5     8
         1   
            3
  6, 7'nin solunda 5'in sağında yer alır.
  
               7
            5     8
         1     6
            3
  0, 7'nin 5'in ve 1'in solunda yer alır.
  
               7
            5     8
         1     6
      0     3
  
  9, 7'nin ve 8'in sağında yer alır.
  
               7
            5     8
         1     6     9
      0     3
  
4, 7'nin ve 5'in solunda 1 ve 3'ün sağında bulunur.

               7
            5     8
         1     6     9
      0     3
               4
               
2, 7'nin 5'in solunda 1'in sağında ve 3'ün solunda bulunur.

               7
            5     8
         1     6     9
      0     3
         2     4


    
   
