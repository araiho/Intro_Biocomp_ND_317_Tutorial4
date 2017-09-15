#Returns highest earner, lowest earner, and number of females in top ten

cat wages.csv|sed 's/,/ /g'|sort -k 4 -n|tail -n 1
cat wages.csv|sed 's/,/ /g'|sort -k 4 -n|head -n 2|tail -n 1
cat wages.csv|sed 's/,/ /g'|sort -k 4 -n|tail -n 10| grep female| wc -l
