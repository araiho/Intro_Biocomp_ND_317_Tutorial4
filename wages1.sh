#Question 2

echo "Highest Earner"
cat wages.csv | cut -d , -f 1,2,4 | sed 1d | sed 's/,/ /g'| sort -k 3 -n | tail -n 1

echo "Lowest Earner"
cat wages.csv | cut -d , -f 1,2,4 | sed 1d | sed 's/,/ /g'| sort -k 3 -n | head -n 1

echo "Number of Females in Top 10"
cat wages.csv | cut -d , -f 1,2,4 | sed 1d | sed 's/,/ /g'| sort -k 3 -n | tail -n 10 | grep "female" | wc -l

