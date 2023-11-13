echo ----------------------write_100------------------------------- > timingTest.txt
{ time ./kiwi-bench write 100 noRandomKeys; } 2> timing.txt > output.txt
tail -n 3 timing.txt >> timingTest.txt
rm -r testdb
echo ----------------------read_100------------------------------- >> timingTest.txt
{ time ./kiwi-bench read 100 noRandomKeys; } 2>> timing.txt >> output.txt
tail -n 3 timing.txt >> timingTest.txt
rm -r testdb
echo -----------------------writeread_100_4------------------------------ >> timingTest.txt
{ time ./kiwi-bench writeread 100 4 noRandomKeys; } 2>> timing.txt >> output.txt
tail -n 3 timing.txt >> timingTest.txt
rm -r testdb
echo -----------------------writeread_100_4_20_80------------------------------ >> timingTest.txt
{ time ./kiwi-bench writeread 100 4 20 80 noRandomKeys; } 2>> timing.txt >> output.txt
tail -n 3 timing.txt >> timingTest.txt
rm -r testdb