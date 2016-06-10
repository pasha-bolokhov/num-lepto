
set terminal postscript color
set xlabel "10-log (T)"
set ylabel "Asymmetry"
plot "asymm_y.dat" using 1:4 smooth csplines title "BAU"

