#Returns highest earner, lowest earner, and number of females in top ten

cat wages.csv|sed 's/,/ /g'|sort -k 4 -n|tail -n 1
cat wages.csv|sed 's/,/ /g'|sort -k 4 -n|head -n 2|tail -n 1
cat wages.csv|sed 's/,/ /g'|sort -k 4 -n|tail -n 10| grep female| wc -l
<<<<<<< HEAD
val1=$(cat wages.csv|sed 's/,/ /g'|sort -k 3 -n|tail -n 16|sed 's/ /,/g'|cut -d , -f 4|sort -n|head -n 1)
val2=$(cat wages.csv|sed 's/,/ /g'|sort -k 3 -n|head -n 2542|tail -n 1188|sed 's/ /,/g'|cut -d , -f 4|sort -n|head -n 1)
echo "$val1-$val2"|bc

>>>>>>> fb07a0e23b3536c900e7e8d4a4f00c5f8f8570d8
