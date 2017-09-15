#Question 1

cat wages.csv | cut -d , -f 1,2 | sed 1d | sed 's/,/ /g'| sort -k1,1 -k2,2n | uniq

