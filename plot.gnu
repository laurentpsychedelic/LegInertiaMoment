set terminal postscript eps enhanced color font 'msmincho,20'
set output 'plot.eps'
set style line 1 linecolor rgb '#000000' linetype 1 linewidth 6
set grid xtics ytics
show grid
# Legend
set key at 6.1,1.3
# Axes label
set xlabel '{/Symbol a}'
set ylabel "{/Symbol G}'({/Symbol a})"
# Axes ranges
set xrange [0:pi]
set yrange [0:3]
# Axes tics
set xtics ('0' 0, '{/Symbol p}/4' pi/4, '{/Symbol p}/2' pi/2, '3{/Symbol p}/4' 3*pi/4, '{/Symbol p}' pi)
#set ytics ('0' 0, '1/3' 1/3, '2/3' 2/3, '1' 1, '4/3' 4/3, '5/3' 5/3, '2' 2, '7/3' 7/3, '8/3' 8/3, '3' 3)  
#set tics scale 0.75
set arrow from pi/8, graph 0 to pi/8, graph 1 nohead
set arrow from graph 0, first 0.745 to graph 1, first 0.745 nohead
set object circle at first pi/8,0.745 radius char 0.5 \
    fillcolor rgb '#000000'fillstyle solid noborder
    set arrow from graph 0, first 1.165 to graph 1, first 1.165 nohead
set arrow from pi/3, graph 0 to pi/3, graph 1 nohead
set object circle at first pi/3,1.165 radius char 0.5 \
    fillcolor rgb '#000000'fillstyle solid noborder
f(x) = 5.0 / 3.0 - cos(x)
plot f(x) title "{/Symbol G}'({/symbol a})" with lines linestyle 1