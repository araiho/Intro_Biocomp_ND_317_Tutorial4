#Question 1 script
cat wages.csv | cut -d , -f 1,2 | sed 1d | sed 's/,/ /g'| sort -k1,1 -k2,2n | uniq
