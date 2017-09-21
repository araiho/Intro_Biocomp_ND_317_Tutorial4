#Returns highest earner, lowest earner, and number of females in top ten

cat wages.csv|sed 's/,/ /g'|sort -k 4 -n|tail -n 1
cat wages.csv|sed 's/,/ /g'|sort -k 4 -n|head -n 2|tail -n 1
cat wages.csv|sed 's/,/ /g'|sort -k 4 -n|tail -n 10| grep female| wc -l
val2=$(sed 's/,/ /g' wages.csv | sort -k 3 -n | head -n 2542 | tail -n 1187 | sort -k 4 -n | head -n 1| sed 's/ /,/g' | cut -d , -f 4)
val1=$(sed 's/,/ /g' wages.csv | sort -k 3 -n | tail -n 15 | sed 's/ /,/g' | cut -d , -f 4 | sort -n | head -n 1)