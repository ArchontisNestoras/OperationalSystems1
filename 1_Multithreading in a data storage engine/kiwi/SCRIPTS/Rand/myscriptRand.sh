echo ----------------------writeread_1000_4_R------------------------------- > timingRand1000.txt
{ time ./kiwi-bench writeread 1000 4 RandomKeys; } 2> timing.txt > output.txt
grep 'Random-Write'  output.txt >> timingRand1000.txt
grep 'Random-Read'  output.txt >> timingRand1000.txt
tail -n 3 timing.txt >> timingRand1000.txt
echo >> timingRand1000.txt
rm -r testdb
echo ----------------------writeread_1000_4_nR------------------------------- >> timingRand1000.txt
{ time ./kiwi-bench writeread 1000 4 noRandomKeys; } 2>> timing.txt > output.txt
grep 'Random-Write'  output.txt >> timingRand1000.txt
grep 'Random-Read'  output.txt >> timingRand1000.txt
tail -n 3 timing.txt >> timingRand1000.txt
echo >> timingRand1000.txt
rm -r testdb
echo ----------------------writeread_10000_4_R------------------------------- > timingRand10000.txt
{ time ./kiwi-bench writeread 10000 4 RandomKeys; } 2>> timing.txt > output.txt
grep 'Random-Write'  output.txt >> timingRand10000.txt
grep 'Random-Read'  output.txt >> timingRand10000.txt
tail -n 3 timing.txt >> timingRand10000.txt
echo >> timingRand1000.txt
rm -r testdb
echo ----------------------writeread_10000_4_nR------------------------------- >> timingRand10000.txt
{ time ./kiwi-bench writeread 10000 4 noRandomKeys; } 2>> timing.txt > output.txt
grep 'Random-Write'  output.txt >> timingRand10000.txt
grep 'Random-Read'  output.txt >> timingRand10000.txt
tail -n 3 timing.txt >> timingRand10000.txt
echo >> timingRand1000.txt
rm -r testdb
echo ----------------------writeread_100000_4_R------------------------------- > timingRand100000.txt
{ time ./kiwi-bench writeread 100000 4 RandomKeys; } 2>> timing.txt > output.txt
grep 'Random-Write'  output.txt >> timingRand100000.txt
grep 'Random-Read'  output.txt >> timingRand100000.txt
tail -n 3 timing.txt >> timingRand100000.txt
echo >> timingRand1000.txt
rm -r testdb
echo ----------------------writeread_100000_4_nR------------------------------- >> timingRand100000.txt
{ time ./kiwi-bench writeread 100000 4 noRandomKeys; } 2>> timing.txt > output.txt
grep 'Random-Write'  output.txt >> timingRand100000.txt
grep 'Random-Read'  output.txt >> timingRand100000.txt
tail -n 3 timing.txt >> timingRand100000.txt
echo >> timingRand1000.txt
rm -r testdb
echo ----------------------writeread_1000000_4_R------------------------------- > timingRand1000000.txt
{ time ./kiwi-bench writeread 1000000 4 RandomKeys; } 2>> timing.txt > output.txt
grep 'Random-Write'  output.txt >> timingRand1000000.txt
grep 'Random-Read'  output.txt >> timingRand1000000.txt
tail -n 3 timing.txt >> timingRand1000000.txt
echo >> timingRand1000.txt
rm -r testdb
echo ----------------------writeread_1000000_4_nR------------------------------- >> timingRand1000000.txt
{ time ./kiwi-bench writeread 1000000 4 noRandomKeys; } 2>> timing.txt > output.txt
grep 'Random-Write'  output.txt >> timingRand1000000.txt
grep 'Random-Read'  output.txt >> timingRand1000000.txt
tail -n 3 timing.txt >> timingRand1000000.txt
echo >> timingRand1000.txt
rm -r testdb