# Inizializzo le variabili relative ai parametri passati in ingresso allo script

#!/bin/bash

maxThread=16
runPerThread=1

#------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------
echo bayes >> results_analysis.txt
nthread=1
while [ $nthread -le $maxThread ] 
	do
	k=0
	while [ $k -lt $runPerThread ]
		do
		echo nice -20 ./bayes/bayes -v32 -r8096 -n10 -p30 -i2 -e10 -s1 -t$nthread 			
		nice -20 ./bayes/bayes -v32 -r8096 -n10 -p30 -i2 -e10 -s1 -t$nthread >> results_analysis.txt
		k=$[$k+1]
	done
	nthread=$[$nthread+1]
done
#------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------
echo genome >> results_analysis.txt
nthread=1
while [ $nthread -le $maxThread ] 
	do
	k=0
	while [ $k -lt $runPerThread ]
		do
		echo nice -20 ./genome/genome -s64 -g24576 -n16777216 -t$nthread 			
		nice -20 ./genome/genome -s64 -g24576 -n16777216 -t$nthread >> results_analysis.txt
		k=$[$k+1]
	done
	nthread=$[$nthread+1]
done
#------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------
echo intruder >> results_analysis.txt
nthread=1
while [ $nthread -le $maxThread ] 
	do
	k=0
	while [ $k -lt $runPerThread ]
		do
		echo nice -20 ./intruder/intruder -a8 -l176 -n109187 -t$nthread 			
		nice -20 ./intruder/intruder -a8 -l176 -n109187 -t$nthread >> results_analysis.txt
		k=$[$k+1]
	done
	nthread=$[$nthread+1]
done
#------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------
echo kmeans >> results_analysis.txt
nthread=1
while [ $nthread -le $maxThread ] 
	do
	k=0
	while [ $k -lt $runPerThread ]
		do
		echo nice -20 ./kmeans/kmeans -m10 -n10 -t0.05 -i kmeans/inputs/random-n2048-d16-c16.txt -p$nthread
		nice -20 ./kmeans/kmeans -m10 -n10 -t0.05 -i kmeans/inputs/random-n2048-d16-c16.txt -p$nthread >> results_analysis.txt
		k=$[$k+1]
	done
	nthread=$[$nthread+1]
done
#------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------
echo labyrinth >> results_analysis.txt
nthread=1
while [ $nthread -le $maxThread ] 
	do
	k=0
	while [ $k -lt $runPerThread ]
		do
		#echo nice -20 ./labyrinth/labyrinth -i labyrinth/inputs/random-x32-y32-z3-n96.txt -t$nthread 
		#nice -20 ./labyrinth/labyrinth -i labyrinth/inputs/random-x32-y32-z3-n96.txt -t$nthread  >> results_analysis.txt
		k=$[$k+1]
	done
	nthread=$[$nthread+1]
done
#------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------
echo ssca2 >> results_analysis.txt
nthread=1
while [ $nthread -le $maxThread ] 
	do
	k=0
	while [ $k -lt $runPerThread ]
		do
		echo nice -20 ./ssca2/ssca2 -s18 -i1.0 -u1.0 -l3 -p3 -t$nthread 			
		 nice -20 ./ssca2/ssca2 -s18 -i1.0 -u1.0 -l3 -p3 -t$nthread  >> results_analysis.txt
		k=$[$k+1]
	done
	nthread=$[$nthread+1]
done
#------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------
echo vacation >> results_analysis.txt
nthread=1
while [ $nthread -le $maxThread ] 
	do
	k=0
	while [ $k -lt $runPerThread ]
		do
		echo nice -20 ./vacation/vacation -n2 -q60 -u90 -r32768 -t1048576 -c$nthread 			
		nice -20 ./vacation/vacation -n2 -q60 -u90 -r32768 -t1048576 -c$nthread >> results_analysis.txt
		k=$[$k+1]
	done
	nthread=$[$nthread+1]
done
#------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------
echo yada >> results_analysis.txt
nthread=1
while [ $nthread -le $maxThread ] 
	do
	k=0
	while [ $k -lt $runPerThread ]
		do
		echo nice -20 ./yada/yada -a10 -i yada/inputs/ttimeu100000.2 -t$nthread 			
		nice -20 ./yada/yada -a10 -i yada/inputs/ttimeu100000.2 -t$nthread  >> results_analysis.txt
		k=$[$k+1]
	done
	nthread=$[$nthread+1]
done
#------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------

