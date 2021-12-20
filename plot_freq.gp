set terminal png

set key right bottom
set xlabel "key rank"
set logscale x

set ylabel "cdf"
set output "rejectionInversion-cdf-1M.png"
set title "CDF for 1M keys"
plot "rejectioninversion0.5.csv" using "key":"frequency" title "s=0.5" with linespoint,\
		 "rejectioninversion0.6.csv" using "key":"frequency" title "s=0.6" with linespoint,\
		 "rejectioninversion0.7.csv" using "key":"frequency" title "s=0.7" with linespoint,\
		 "rejectioninversion0.8.csv" using "key":"frequency" title "s=0.8" with linespoint,\
		 "rejectioninversion0.9.csv" using "key":"frequency" title "s=0.9" with linespoint,\
		 "rejectioninversion1.0.csv" using "key":"frequency" title "s=1.0" with linespoint,\
		 "rejectioninversion1.1.csv" using "key":"frequency" title "s=1.1" with linespoint,\
		 "rejectioninversion1.2.csv" using "key":"frequency" title "s=1.2" with linespoint,\
		 "rejectioninversion1.3.csv" using "key":"frequency" title "s=1.3" with linespoint,\
		 "rejectioninversion1.4.csv" using "key":"frequency" title "s=1.4" with linespoint,\
		 "rejectioninversion1.5.csv" using "key":"frequency" title "s=1.5" with linespoint


set style line 5 lt rgb "blue" lw 3 pt 6
set style line 5 lt rgb "red" lw 3 pt 6
set output "rejectionInversion-vs-ycsb-1M.png"
set title "CDF 1M keys RejectionInversion v YCSB s=[0.5, 1.2]"
plot "ycsb1M0.5.csv" using "key":"frequency" title "YCSB" with linespoint ls 5,\
		 "ycsb1M0.6.csv" using "key":"frequency" notitle with linespoint ls 5,\
		 "ycsb1M0.7.csv" using "key":"frequency" notitle with linespoint ls 5,\
		 "ycsb1M0.8.csv" using "key":"frequency" notitle with linespoint ls 5,\
		 "ycsb1M0.9.csv" using "key":"frequency" notitle with linespoint ls 5,\
		 "ycsb1M1.0.csv" using "key":"frequency" notitle with linespoint ls 5,\
		 "ycsb1M1.1.csv" using "key":"frequency" notitle with linespoint ls 5,\
		 "ycsb1M1.2.csv" using "key":"frequency" notitle with linespoint ls 5,\
		 "rejectioninversion0.5.csv" using "key":"frequency" title "RejectionInversion" with linespoint ls 6,\
		 "rejectioninversion0.6.csv" using "key":"frequency" notitle with linespoint ls 6,\
		 "rejectioninversion0.7.csv" using "key":"frequency" notitle with linespoint ls 6,\
		 "rejectioninversion0.8.csv" using "key":"frequency" notitle with linespoint ls 6,\
		 "rejectioninversion0.9.csv" using "key":"frequency" notitle with linespoint ls 6,\
		 "rejectioninversion1.0.csv" using "key":"frequency" notitle with linespoint ls 6,\
		 "rejectioninversion1.1.csv" using "key":"frequency" notitle with linespoint ls 6,\
		 "rejectioninversion1.2.csv" using "key":"frequency" notitle with linespoint ls 6,\
