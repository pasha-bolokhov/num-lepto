
set terminal postscript color
set xlabel "10-log (T)"
set ylabel "Asymmetry"
plot "asymm_y.dat" using 1:2 smooth csplines title "L", "asymm_y.dat" using 1:3 smooth csplines title "B"

