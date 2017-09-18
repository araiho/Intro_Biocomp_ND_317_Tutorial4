#shell script to sort through wages.csv
cat wages.csv | cut -d , -f 1,2 | sed 's/,/ /g'

#Shell Script for Number 2
echo Highest Earner, with years of experience:
cat "$1" | sed 's/,/ /g' | sort -n -k 4 | cut -f 1-2,4 -d " " | tail -1
echo Lowest Earner, with years of experience:
cat "$1" | sed 's/,/ /g' | sort -n -k 4 | cut -f 1-2,4 -d " " | head -2 | tail $
echo Women in top 10:
cat "$1" | sed 's/,/ /g' | sort -n -k 4 | tail -10 | grep -c "female"



