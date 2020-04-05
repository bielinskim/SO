#1:
#!/bin/bash
path=/home/mateusz/SO/lab02
cd $path
listaKopii=$(ls * | tr '\n' ' ')
echo "1. Lista skopiowanych plikow: $listaKopii"
listaTypow=$(file $listaKopii)
echo "2. Typy plików z listy:"
echo "$listaTypow"
listaWierszy=$(wc -l $listaKopii)
echo "3. Liczba wierszy w plikach:"
echo "$listaWierszy"
sumaWierszy=$(cat hosts networks services | wc -l)
echo "4. Suma wierszy:   $sumaWierszy  total"
exit 0
 
#2:
#!/bin/bash
path=/home/mateusz/SO/lab02
cd $path
echo '================== 1.'
grep '127.0.0' *
echo '================== 2.'
grep -L '127.0.0' *
echo '================== 3.'
grep -n 'smtp' services
echo '================== 4.'
echo 'Liczba wystapień: smtp'
grep -o smtp services | wc -l
echo 'Liczba wystapień: "ftp" '
grep -o "ftp" services | wc -l
echo '=================== 5.'
grep -n '' hosts
exit 0
 
#3:
#!/bin/bash
path=/home/mateusz/SO/lab02
cd $path
cal 2020 | grep --after=7 Lipca
exit 0
 
#4:
#!/bin/bash
path=/home/mateusz/SO/lab02
cd $path
cal 2020 | grep --after=7 Lipca | cut -c 22-43
exit 0
