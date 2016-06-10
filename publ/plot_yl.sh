#

 gnuplot << EOF > asymm_yl.ps
   set terminal postscript landscape enhanced color dashed
   set xlabel "log_{10} (T)"
   set ylabel "-Y_L"
   plot "asymm_yl.dat" using (\$1):(-\$2) smooth csplines title "-Y_L" with lines lt 1 lw 5,  "asymm_yl.dat" using (\$1):(-\$7) smooth csplines title "-Y_{L(eq)}" with lines lt 2 lw 5, "asymm_yl_0.10.dat" using (\$1):(-\$2) smooth csplines notitle with lines lt 3 lw 2, "asymm_yl_0.07.dat" using (\$1):(-\$2) smooth csplines notitle with lines lt 3 lw 2
EOF

