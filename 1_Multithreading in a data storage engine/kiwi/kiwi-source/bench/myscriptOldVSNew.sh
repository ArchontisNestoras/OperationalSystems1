echo ----------------------write_1000------------------------------- > timingOldVSNew1000.txt
{ time ./kiwi-bench write 1000; } 2> timing.txt > output.txt
tail -n 3 timing.txt >> timingOldVSNew1000.txt
rm -r testdb
echo ----------------------read_1000------------------------------- >> timingOldVSNew1000.txt
{ time ./kiwi-bench read 1000; } 2>> timing.txt >> output.txt
tail -n 3 timing.txt >> timingOldVSNew1000.txt
rm -r testdb
echo ----------------------write_10000------------------------------- > timingOldVSNew10000.txt
{ time ./kiwi-bench write 10000; } 2>> timing.txt >> output.txt
tail -n 3 timing.txt >> timingOldVSNew10000.txt
rm -r testdb
echo ----------------------read_10000------------------------------- >> timingOldVSNew10000.txt
{ time ./kiwi-bench read 10000; } 2>> timing.txt >> output.txt
tail -n 3 timing.txt >> timingOldVSNew10000.txt
rm -r testdb
echo ----------------------write_100000------------------------------- > timingOldVSNew100000.txt
{ time ./kiwi-bench write 100000; } 2>> timing.txt >> output.txt
tail -n 3 timing.txt >> timingOldVSNew100000.txt
rm -r testdb
echo ----------------------read_100000------------------------------- >> timingOldVSNew100000.txt
{ time ./kiwi-bench read 100000; } 2>> timing.txt >> output.txt
tail -n 3 timing.txt >> timingOldVSNew100000.txt
rm -r testdb
echo ----------------------write_1000000------------------------------- > timingOldVSNew1000000.txt
{ time ./kiwi-bench write 1000000; } 2>> timing.txt >> output.txt
tail -n 3 timing.txt >> timingOldVSNew1000000.txt
rm -r testdb
echo ----------------------read_1000000------------------------------- >> timingOldVSNew1000000.txt
{ time ./kiwi-bench read 1000000; } 2>> timing.txt >> output.txt
tail -n 3 timing.txt >> timingOldVSNew1000000.txt
rm -r testdb