echo ----------------------write_1000------------------------------- > timingOldVSNew1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench write 1000 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew1000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew1000.txt
	echo >> timingOldVSNew1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew1000.txt
echo ----------------------read_1000------------------------------- >> timingOldVSNew1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench read 1000 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew1000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew1000.txt
	echo >> timingOldVSNew1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew1000.txt
echo -----------------------writeread_1000_4------------------------------ >> timingOldVSNew1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000 4 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew1000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew1000.txt
	echo >> timingOldVSNew1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew1000.txt
echo ----------------------write_10000------------------------------- > timingOldVSNew10000.txt
for i in {1..5}
do
	{ time ./kiwi-bench write 10000 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew10000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew10000.txt
	echo >> timingOldVSNew10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew10000.txt
echo ----------------------read_10000------------------------------- >> timingOldVSNew10000.txt
for i in {1..5}
do
	{ time ./kiwi-bench read 10000 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew10000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew10000.txt
	echo >> timingOldVSNew10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew10000.txt
echo -----------------------writeread_10000_4------------------------------ >> timingOldVSNew10000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 10000 4 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew10000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew10000.txt
	echo >> timingOldVSNew10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew10000.txt
echo ----------------------write_100000------------------------------- > timingOldVSNew100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench write 100000 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew100000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew100000.txt
	echo >> timingOldVSNew100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew100000.txt
echo ----------------------read_100000------------------------------- >> timingOldVSNew100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench read 100000 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew100000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew100000.txt
	echo >> timingOldVSNew100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew100000.txt
echo -----------------------writeread_100000_4------------------------------ >> timingOldVSNew100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 100000 4 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew100000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew100000.txt
	echo >> timingOldVSNew100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew100000.txt
echo ----------------------write_1000000------------------------------- > timingOldVSNew1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench write 1000000 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew1000000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew1000000.txt
	echo >> timingOldVSNew1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew1000000.txt
echo ----------------------read_1000000------------------------------- >> timingOldVSNew1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench read 1000000 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew1000000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew1000000.txt
	echo >> timingOldVSNew1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew1000000.txt
echo -----------------------writeread_1000000_4------------------------------ >> timingOldVSNew1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000000 4 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingOldVSNew1000000.txt
	grep 'Random-Read'  output.txt >> timingOldVSNew1000000.txt
	echo >> timingOldVSNew1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingOldVSNew1000000.txt