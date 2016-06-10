 gnuplot << EOF > t.ps
   set terminal postscript color
   set xlabel "10-log (T)"
   set ylabel "Asymmetry"
   set label 1 "eta_L = $eta_L" at graph 0.04,0.90 font "Helvetica,10"
   set label 2 "eta_B = $eta_B" at graph 0.04,0.87 font "Helvetica,10"
   set label 3 "T_R = $T_R" at graph 0.04,0.84 font "Helvetica,10"
   set label 4 "T_S = $T_S" at graph 0.04,0.81 font "Helvetica,10"
   set label 5 "x_sph = $x_sph (art suppr)" at graph 0.04,0.78 font "Helvetica,10"
   set label 6 "m_nu = $m_nu" at graph 0.04,0.75 font "Helvetica,10"
   plot [t=11:15] "asymm_y.dat" using 1:2 smooth csplines title "L", "asymm_y.dat" using 1:7 smooth csplines title "Y_Leq"
EOF

