#/bin/sh

gettime() {
  TSP_MSEC=`perl -MTime::HiRes -e 'print int(1000 * Time::HiRes::gettimeofday),"\n"'`
#  SEC=`expr $TSP_MSEC / 1000`
#  echo $SEC
  echo $TSP_MSEC
}

trap_ctrlc() {
   #echo " Pressed Ctrl-C"
   echo
}

trap "trap_ctrlc" 2


echo "Start of timer"
echo "Press Ctrl-C to stop timer or the timer will stop after 100s"
BEGIN=$(gettime)
sleep 100
END=$(gettime)
echo "End of timer"


RDTIME=`echo "$END - $BEGIN" | bc`
new=`printf %.3f $(echo "$RDTIME/1000" | bc -l)`
echo "The time is $new"

