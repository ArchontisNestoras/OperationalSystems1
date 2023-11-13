echo ----------------------write_1000_1_80_20------------------------------- > timingPerc1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000 1 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc1000.txt
	grep 'Random-Read'  output.txt >> timingPerc1000.txt
	echo >> timingPerc1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc1000.txt
echo ----------------------write_1000_2_80_20------------------------------- >> timingPerc1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000 2 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc1000.txt
	grep 'Random-Read'  output.txt >> timingPerc1000.txt
	echo >> timingPerc1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc1000.txt
echo -----------------------write_1000_4_80_20------------------------------ >> timingPerc1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000 4 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc1000.txt
	grep 'Random-Read'  output.txt >> timingPerc1000.txt
	echo >> timingPerc1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc1000.txt
echo -----------------------write_1000_10_80_20------------------------------ >> timingPerc1000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000 10 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc1000.txt
	grep 'Random-Read'  output.txt >> timingPerc1000.txt
	echo >> timingPerc1000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc1000.txt
echo ----------------------write_10000_1_80_20------------------------------- > timingPerc10000.txt
{ time ./kiwi-bench writeread 10000 1 80 20 noRandomKeys; } 2>> timing.txt >> output.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 10000 1 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc10000.txt
	grep 'Random-Read'  output.txt >> timingPerc10000.txt
	echo >> timingPerc10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc10000.txt
echo ----------------------write_10000_2_80_20------------------------------- >> timingPerc10000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 10000 2 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc10000.txt
	grep 'Random-Read'  output.txt >> timingPerc10000.txt
	echo >> timingPerc10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc10000.txt
echo -----------------------write_10000_4_80_20------------------------------ >> timingPerc10000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 10000 4 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc10000.txt
	grep 'Random-Read'  output.txt >> timingPerc10000.txt
	echo >> timingPerc10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc10000.txt
echo -----------------------write_10000_10_80_20------------------------------ >> timingPerc10000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 10000 10 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc10000.txt
	grep 'Random-Read'  output.txt >> timingPerc10000.txt
	echo >> timingPerc10000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc10000.txt
echo ----------------------write_100000_1_80_20------------------------------- > timingPerc100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 100000 1 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc100000.txt
	grep 'Random-Read'  output.txt >> timingPerc100000.txt
	echo >> timingPerc100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc100000.txt
echo ----------------------write_100000_2_80_20------------------------------- >> timingPerc100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 100000 2 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc100000.txt
	grep 'Random-Read'  output.txt >> timingPerc100000.txt
	echo >> timingPerc100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc100000.txt
echo -----------------------write_100000_4_80_20------------------------------ >> timingPerc100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 100000 4 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc100000.txt
	grep 'Random-Read'  output.txt >> timingPerc100000.txt
	echo >> timingPerc100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc100000.txt
echo -----------------------write_100000_10_80_20------------------------------ >> timingPerc100000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 100000 10 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc100000.txt
	grep 'Random-Read'  output.txt >> timingPerc100000.txt
	echo >> timingPerc100000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc100000.txt
echo ----------------------write_1000000_1_80_20------------------------------- > timingPerc1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000000 1 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc1000000.txt
	grep 'Random-Read'  output.txt >> timingPerc1000000.txt
	echo >> timingPerc1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc1000000.txt
echo ----------------------write_1000000_2_80_20------------------------------- >> timingPerc1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000000 2 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc1000000.txt
	grep 'Random-Read'  output.txt >> timingPerc1000000.txt
	echo >> timingPerc1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc1000000.txt
echo -----------------------write_1000000_4_80_20------------------------------ >> timingPerc1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000000 4 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc1000000.txt
	grep 'Random-Read'  output.txt >> timingPerc1000000.txt
	echo >> timingPerc1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc1000000.txt
echo -----------------------write_1000000_10_80_20------------------------------ >> timingPerc1000000.txt
for i in {1..5}
do
	{ time ./kiwi-bench writeread 1000000 10 80 20 noRandomKeys; } > output.txt
	grep 'Random-Write'  output.txt >> timingPerc1000000.txt
	grep 'Random-Read'  output.txt >> timingPerc1000000.txt
	echo >> timingPerc1000000.txt
	rm -r testdb
done |& awk '/real/{sum += substr($2,3); count++} END {print "Average time:", sum/count "s"}' >> timingPerc1000000.txt