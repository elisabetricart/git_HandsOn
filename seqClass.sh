#!/bin/bash
#ssooooo canvi
seq=$1 #Guarda sobre la variable la secuencia entrada
seq=$(echo $seq | tr a-z A-Z) # Pasa a mayusculas los valores entrados
if [[ $seq =~ ^[ACGTU]+$ ]]; then #Si contiene los valores dichos entrara dentro
 if [[ $seq =~ T ]]; then #Si contiene alguna T entrara dentro
  if [[ $seq =~ U ]] ; then # si contiene  T i U
    echo "The sequence is DNA o ARN" #Muestra el mensaje
  else #si no tiene  U 
    echo "The sequence is DNA" #Muestra el mensaje   
  fi 
elif [[ $seq =~ U ]]; then #Si contiene alguna U entrara dentro
   echo "The sequence is RNA" #Muestra el mensaje
 else #Si no contiene T o U entrara dentro
  echo "The sequence can be DNA or RNA" #Muestra el mensaje
 fi
else #Si no contiene los valores dichos anteriormente entrara dentro
  echo "The sequence is not DNA nor RNA" #Muestra el mensaje
fi #Acaba el programa

