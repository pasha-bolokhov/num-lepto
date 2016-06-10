#
#

gnuplot << EOF > scan_log.ps
   set terminal postscript color
   set xlabel "m_nu (eV)"
   set ylabel "log10(eta)"
   plot "scan.dat" using (\$1):(log10(\$2)) smooth bezier title "eta_L", "scan.dat" using (\$1):(log10(\$3)) smooth bezier title "eta_B"
EOF
 
