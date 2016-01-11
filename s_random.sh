#!/bin/bash

#x=1234567890
#for((i=10;i>0;i--));do
#  ((r=RANDOM%i+1))
#  echo ${x:r-1:1}
#  x=${x:0:r-1}${x:r}
#done

#  Generate random number between 6 and 30.
rnumber=$((RANDOM%25+6))
echo $rnumber


# generate random numbers between 65535

HBASE_PORT=()
for (( i=1;i<=5;i++ )); do
  #x=`echo $(($RANDOM$RANDOM$RANDOM%65535+1001))`
  x=`echo $(($RANDOM$RANDOM$RANDOM%65535))`
  HBASE_PORT+=($x)
done

for x in `seq 0 4`
do
   echo ${HBASE_PORT[$x]}
done

