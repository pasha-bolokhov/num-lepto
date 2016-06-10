#
#

gnuplot << EOF > scan.ps
   set terminal postscript color
   set xlabel "m_nu (eV)"
   set ylabel "eta * 10^22"
   plot "scan.dat" using (\$1):(\$2/2.0)*10.0e+22 smooth bezier title "eta_L", "scan.dat" using (\$1):(\$3/2.0)*10.0e+22 smooth bezier title "eta_B"
EOF
 
