#

# gnuplot plot.gnu > asymm.ps 
eta_L=`grep eta_L asymm.dat`
eta_L=`echo $eta_L | sed 's/^.*= *//'`
eta_B=`grep eta_B asymm.dat`
eta_B=`echo $eta_B | sed 's/^.*= *//'`
t=`grep T_R asymm.dat`
T_R=`echo $t | sed 's/^.*= *//'`
t=`grep T_S asymm.dat`
T_S=`echo $t | sed 's/^.*= *//'`
t=`grep x_sph asymm.dat`
x_sph=`echo $t | sed 's/^.*= *//'`
t=`grep m_nu asymm.dat`
m_nu=`echo $t | sed 's/^.*= *//'`
 gnuplot << EOF > asymm.ps 
   set terminal postscript color
   set xlabel "10-log (T)"
   set ylabel "Asymmetry"
   set label 1 "eta_L = $eta_L" at graph 0.04,0.90 font "Helvetica,10"
   set label 2 "eta_B = $eta_B" at graph 0.04,0.87 font "Helvetica,10"
   set label 3 "T_R = $T_R" at graph 0.04,0.84 font "Helvetica,10"
   set label 4 "T_S = $T_S" at graph 0.04,0.81 font "Helvetica,10"
   set label 5 "x_sph = $x_sph (art suppr)" at graph 0.04,0.78 font "Helvetica,10"
   set label 6 "m_nu = $m_nu" at graph 0.04,0.75 font "Helvetica,10"
   plot "asymm.dat" using 1:2 smooth csplines title "L-B", "asymm.dat" using 1:3 smooth csplines title "L+B"
EOF


 gnuplot << EOF > asymm_y.ps
   set terminal postscript color
   set xlabel "10-log (T)"
   set ylabel "Asymmetry"
   set label 1 "eta_L = $eta_L" at graph 0.04,0.90 font "Helvetica,10"
   set label 2 "eta_B = $eta_B" at graph 0.04,0.87 font "Helvetica,10"
   set label 3 "T_R = $T_R" at graph 0.04,0.84 font "Helvetica,10"
   set label 4 "T_S = $T_S" at graph 0.04,0.81 font "Helvetica,10"
   set label 5 "x_sph = $x_sph (art suppr)" at graph 0.04,0.78 font "Helvetica,10"
   set label 6 "m_nu = $m_nu" at graph 0.04,0.75 font "Helvetica,10"
   plot "asymm_y.dat" using 1:2 smooth csplines title "L", "asymm_y.dat" using 1:3 smooth csplines title "B" 
EOF

 gnuplot << EOF > asymm_yb.ps
   set terminal postscript color
   set xlabel "10-log (T)"
   set ylabel "Asymmetry"
   set label 1 "eta_L = $eta_L" at graph 0.04,0.90 font "Helvetica,10"
   set label 2 "eta_B = $eta_B" at graph 0.04,0.87 font "Helvetica,10"
   set label 3 "T_R = $T_R" at graph 0.04,0.84 font "Helvetica,10"
   set label 4 "T_S = $T_S" at graph 0.04,0.81 font "Helvetica,10"
   set label 5 "x_sph = $x_sph (art suppr)" at graph 0.04,0.78 font "Helvetica,10"
   set label 6 "m_nu = $m_nu" at graph 0.04,0.75 font "Helvetica,10"
   plot [t=11:14] "asymm_y.dat" using 1:3 smooth csplines title "B", "asymm_y.dat" using 1:8 smooth csplines title "Y_Beq"
EOF

 gnuplot << EOF > asymm_yl.ps
   set terminal postscript color
   set xlabel "10-log (T)"
   set ylabel "Asymmetry"
   set label 1 "eta_L = $eta_L" at graph 0.04,0.90 font "Helvetica,10"
   set label 2 "eta_B = $eta_B" at graph 0.04,0.87 font "Helvetica,10"
   set label 3 "T_R = $T_R" at graph 0.04,0.84 font "Helvetica,10"
   set label 4 "T_S = $T_S" at graph 0.04,0.81 font "Helvetica,10"
   set label 5 "x_sph = $x_sph (art suppr)" at graph 0.04,0.78 font "Helvetica,10"
   set label 6 "m_nu = $m_nu" at graph 0.04,0.75 font "Helvetica,10"
   plot [t=11:14] "asymm_y.dat" using 1:2 smooth csplines title "L", "asymm_y.dat" using 1:7 smooth csplines title "Y_Leq"
EOF

 gnuplot << EOF > asymm_yll.ps
   set terminal postscript color
   set xlabel "10-log (T)"
   set ylabel "Asymmetry"
   set label 1 "eta_L = $eta_L" at graph 0.04,0.90 font "Helvetica,10"
   set label 2 "eta_B = $eta_B" at graph 0.04,0.87 font "Helvetica,10"
   set label 3 "T_R = $T_R" at graph 0.04,0.84 font "Helvetica,10"
   set label 4 "T_S = $T_S" at graph 0.04,0.81 font "Helvetica,10"
   set label 5 "x_sph = $x_sph (art suppr)" at graph 0.04,0.78 font "Helvetica,10"
   set label 6 "m_nu = $m_nu" at graph 0.04,0.75 font "Helvetica,10"
   plot "asymm_y.dat" using 1:2 smooth csplines title "L", "asymm_y.dat" using 1:7 smooth csplines title "Y_Leq"
EOF


 gnuplot << EOF > asymm_bau.ps
   set terminal postscript color
   set xlabel "10-log (T)"
   set ylabel "Asymmetry"
   set label 1 "eta_L = $eta_L" at graph 0.04,0.90 font "Helvetica,10"
   set label 2 "eta_B = $eta_B" at graph 0.04,0.87 font "Helvetica,10"
   set label 3 "T_R = $T_R" at graph 0.04,0.84 font "Helvetica,10"
   set label 4 "T_S = $T_S" at graph 0.04,0.81 font "Helvetica,10"
   set label 5 "x_sph = $x_sph (art suppr)" at graph 0.04,0.78 font "Helvetica,10"
   set label 6 "m_nu = $m_nu" at graph 0.04,0.75 font "Helvetica,10"
   plot "asymm_y.dat" using 1:4 smooth csplines title "BAU"
EOF

 gnuplot << EOF > asymm_ups.ps
   set terminal postscript color
   set xlabel "10-log (T)"
   set ylabel "Asymmetry"
   set label 1 "eta_L = $eta_L" at graph 0.04,0.90 font "Helvetica,10"
   set label 2 "eta_B = $eta_B" at graph 0.04,0.87 font "Helvetica,10"
   set label 3 "T_R = $T_R" at graph 0.04,0.84 font "Helvetica,10"
   set label 4 "T_S = $T_S" at graph 0.04,0.81 font "Helvetica,10"
   set label 5 "x_sph = $x_sph (art suppr)" at graph 0.04,0.78 font "Helvetica,10"
   set label 6 "m_nu = $m_nu" at graph 0.04,0.75 font "Helvetica,10"
   plot "asymm_y.dat" using 1:5 smooth csplines title "Ups_L", "asymm_y.dat" using 1:6 smooth csplines title "Ups_B"
EOF

