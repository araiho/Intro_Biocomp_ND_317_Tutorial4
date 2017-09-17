#Question 1
cat wages.csv | cut -d , -f 1,2 | sed 1d | sed 's/,/ /g'| sort -k1,1 -k2,2n | uniq

#Question 2

echo "Highest Earner"
cat wages.csv | cut -d , -f 1,2,4 | sed 1d | sed 's/,/ /g'| sort -k 3 -n | tail -n 1

echo "Lowest Earner"
cat wages.csv | cut -d , -f 1,2,4 | sed 1d | sed 's/,/ /g'| sort -k 3 -n | head -n 1

echo "Number of Females in Top 10"
cat wages.csv | cut -d , -f 1,2,4 | sed 1d | sed 's/,/ /g'| sort -k 3 -n | tail -n 10 | grep "female" | wc -l

#Question 3
VAR1="$(cat wages.csv | cut -d , -f 3,4 | sed 's/,/ /g'| sort -k 1 -n | grep "12 " | cut -d " " -f 2 | awk -v N=1 '{ sum += $N } END { if (NR > 0) print sum / NR }')"
VAR2="$(cat wages.csv | cut -d , -f 3,4 | sed 's/,/ /g'| sort -k 1 -n | grep "16 " | cut -d " " -f 2 | awk -v N=1 '{ sum += $N } END { if (NR > 0) print sum / NR }')"
echo "Difference between graduating college and not"
echo  "$VAR2 - $VAR1" | bc
