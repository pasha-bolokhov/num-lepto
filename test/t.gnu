#


 gnuplot << EOF > y.ps
   set terminal postscript color
   set xlabel "10-log (T)"
   set ylabel "Asymmetry"
   plot "y.dat" using 1:2 smooth csplines title "L", "y.dat" using 1:3 smooth csplines title "B", "y.dat" using 1:8 smooth csplines title "Beq"
EOF


