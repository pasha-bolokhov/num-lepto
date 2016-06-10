#
#

gnuplot << EOF 
   set output "scan_log.tex"
#   set terminal postscript landscape enhanced color solid 
   set terminal epslatex color solid 
#   set xlabel "{$ log_{10}(m_{nu} (eV))$}"
#   set ylabel "{log10($\\eta$)}"
   set parametric
   plot [t=-25:-21] log10(0.05),t notitle with lines, log10(0.65),t notitle with lines, "scan.dat" using (log10(\$1)):(log10(\$2)) smooth bezier title "{$ eta_L $}" with lines, "scan.dat" using (log10(\$1)):(log10(\$3)) smooth bezier title "{$ \eta_B $}" with lines
   set output
EOF
 
