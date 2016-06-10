#
#

gnuplot << EOF > scan_log.ps
   set terminal postscript landscape enhanced color dashed
#   set terminal pstex color solid 
   set xlabel "log_{10}( m_{nu} (eV) )"
   set ylabel "log_{10}( eta (GeV^{-1}) )"
   set parametric
   plot [t=-25:-21] log10(0.05),t notitle  with lines lt 3 lw 3, log10(0.65),t notitle with lines lt 3 lw 3, "scan.dat" using (log10(\$1)):(log10(\$2/2.0)) smooth bezier title "eta_l" with lines lt 1 lw 5, "scan.dat" using (log10(\$1)):(log10(\$3/2.0)) smooth bezier title "-eta_b" with lines lt 2 lw 5
EOF
 
