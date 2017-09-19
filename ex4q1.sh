#question one ex4
# filename you want worked on, $2 filename you want it to print to

cat "$1" | tr "," " " | awk '{print $1 " " $2}' | uniq > hold.txt
cat hold.txt | sort -k1.1d,1 -k2.2n,2 | uniq > "$2"
