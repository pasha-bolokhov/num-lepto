#

 gnuplot << EOF > asymm_yb.ps
   set terminal postscript landscape enhanced color dashed
   set xlabel "log_{10} (T)"
   set ylabel "Y_B"
   plot [11:15] [0:8e-09] "asymm_yb.dat" using (\$1):(-\$3) smooth csplines title "Y_B" with lines lt 1 lw 5,  "asymm_yb.dat" using (\$1):(-\$8) smooth csplines title "Y_{B(eq)}" with lines lt 2 lw 5
EOF

