
set terminal postscript color
set xlabel "10-log (T)"
set ylabel "Asymmetry"
plot "asymm.dat" using 1:2 smooth csplines title "L-B"

