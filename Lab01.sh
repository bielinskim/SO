#Zad1
 
#!/bin/bash
ps -H --no-headers
liczbaProcesow=$(ps -H --no-headers | wc -l)
echo "Liczba procesow to: $liczbaProcesow"
exit 0
 
#Zad2
 
#!/bin/bash
path=/dev
liczbaPlikow=$(cd $path | ls | wc -l)
echo "Liczba plikow w katalogu $path to $liczbaPlikow"
exit 0
 
#Zad3
 
#!/bin/bash
echo "Hello, World!"
echo "Hello, World!" | wc -c
exit 0
