#Run with bash wages.sh wages.csv
#$1 is the .csv file to run $2 is the new file for the output

#Shell Script for Number 1
cat "$1" | cut -d , -f 1,2 | sed 's/,/ /g' | sort --uniq | sort -k1,1 -k2,2 > "$2"

#Shell Script for Number 2
echo Highest Earner, with years of experience:
cat "$1" | sed 's/,/ /g' | sort -n -k 4 | cut -f 1-2,4 -d " " | tail -1
echo Lowest Earner, with years of experience:
cat "$1" | sed 's/,/ /g' | sort -n -k 4 | cut -f 1-2,4 -d " " | head -2 | tail -1
echo Women in top 10:
cat "$1" | sed 's/,/ /g' | sort -n -k 4 | tail -10 | grep -c "female"

#Shell Script for Number 3
VAL1=$(cat "$1" | sed 's/,/ /g' | sort -n -k 3,3 -k 4,4 | cut -f 3-4 -d " " | grep "16 " | head -1 | cut -f 2 -d " ")
VAL2=$(cat "$1" | sed 's/,/ /g' | sort -n -k 3,3 -k 4,4 | cut -f 3-4 -d " " | grep "12 " | head -1 | cut -f 2 -d " ")
echo Difference in minimum wage between high school and college graduate
echo "$VAL1 - $VAL2" | bc
