echo ----------------------10000---1---------------------------- > timingRythAp1.txt
( time ./kiwi-bench writeread 10000 1 noRandomKeys ) > output3.txt 
grep 'Random-Read'  output3.txt >> timingRythAp1.txt
rm -r testdb
echo ----------------------10000---2---------------------------- > timingRythAp2.txt
( time ./kiwi-bench writeread 10000 2 noRandomKeys ) > output3.txt 
grep 'Random-Read'  output3.txt >> timingRythAp2.txt
rm -r testdb

echo ----------------------10000---4---------------------------- > timingRythAp4.txt
( time ./kiwi-bench writeread 10000 4 noRandomKeys ) > output3.txt 
grep 'Random-Read'  output3.txt >> timingRythAp4.txt
rm -r testdb

echo ----------------------10000---8---------------------------- > timingRythAp8.txt
( time ./kiwi-bench writeread 10000 8 noRandomKeys ) > output3.txt 
grep 'Random-Read'  output3.txt >> timingRythAp8.txt
rm -r testdb