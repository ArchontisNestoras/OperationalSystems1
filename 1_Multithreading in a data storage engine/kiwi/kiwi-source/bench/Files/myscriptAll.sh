echo ----------------------writeread_1000_1------------------------------- > timingAll1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000 1 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll1000.txt
	grep 'Random-Read'  output.txt >> timingAll1000.txt
	echo >> timingAll1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll1000.txt
echo ----------------------writeread_1000_2------------------------------- >> timingAll1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000 2 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll1000.txt
	grep 'Random-Read'  output.txt >> timingAll1000.txt
	echo >> timingAll1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll1000.txt
echo -----------------------writeread_1000_4------------------------------ >> timingAll1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000 4 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll1000.txt
	grep 'Random-Read'  output.txt >> timingAll1000.txt
	echo >> timingAll1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll1000.txt
echo -----------------------writeread_1000_10------------------------------ >> timingAll1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000 10 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll1000.txt
	grep 'Random-Read'  output.txt >> timingAll1000.txt
	echo >> timingAll1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll1000.txt
echo ----------------------writeread_10000_1------------------------------- > timingAll10000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 10000 1 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll10000.txt
	grep 'Random-Read'  output.txt >> timingAll10000.txt
	echo >> timingAll10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll10000.txt
echo ----------------------writeread_10000_2------------------------------- >> timingAll10000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 10000 2 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll10000.txt
	grep 'Random-Read'  output.txt >> timingAll10000.txt
	echo >> timingAll10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll10000.txt
echo -----------------------writeread_10000_4------------------------------ >> timingAll10000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 10000 4 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll10000.txt
	grep 'Random-Read'  output.txt >> timingAll10000.txt
	echo >> timingAll10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll10000.txt
echo -----------------------writeread_10000_10------------------------------ >> timingAll10000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 10000 10 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll10000.txt
	grep 'Random-Read'  output.txt >> timingAll10000.txt
	echo >> timingAll10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll10000.txt
echo ----------------------writeread_100000_1------------------------------- > timingAll100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 100000 1 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll100000.txt
	grep 'Random-Read'  output.txt >> timingAll100000.txt
	echo >> timingAll100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll100000.txt
echo ----------------------writeread_100000_2------------------------------- >> timingAll100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 100000 2 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll100000.txt
	grep 'Random-Read'  output.txt >> timingAll100000.txt
	echo >> timingAll100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll100000.txt
echo -----------------------writeread_100000_4------------------------------ >> timingAll100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 100000 4 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll100000.txt
	grep 'Random-Read'  output.txt >> timingAll100000.txt
	echo >> timingAll100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll100000.txt
echo -----------------------writeread_100000_10------------------------------ >> timingAll100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 100000 10 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll100000.txt
	grep 'Random-Read'  output.txt >> timingAll100000.txt
	echo >> timingAll100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll100000.txt
echo ----------------------writeread_1000000_1------------------------------- > timingAll1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000000 1 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll1000000.txt
	grep 'Random-Read'  output.txt >> timingAll1000000.txt
	echo >> timingAll1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll1000000.txt
echo ----------------------writeread_1000000_2------------------------------- >> timingAll1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000000 2 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll1000000.txt
	grep 'Random-Read'  output.txt >> timingAll1000000.txt
	echo >> timingAll1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll1000000.txt
echo -----------------------writeread_1000000_4------------------------------ >> timingAll1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000000 4 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll1000000.txt
	grep 'Random-Read'  output.txt >> timingAll1000000.txt
	echo >> timingAll1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll1000000.txt
echo -----------------------writeread_1000000_10------------------------------ >> timingAll1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000000 10 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingAll1000000.txt
	grep 'Random-Read'  output.txt >> timingAll1000000.txt
	echo >> timingAll1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingAll1000000.txt