echo Highest Earner, with years of experience:
cat "$1" | sed 's/,/ /g' | sort -n -k 4 | cut -f 1-2,4 -d " " | tail -1
echo Lowest Earner, with years of experience:
cat "$1" | sed 's/,/ /g' | sort -n -k 4 | cut -f 1-2,4 -d " " | head -2 | tail -1
echo Women in top 10:
cat "$1" | sed 's/,/ /g' | sort -n -k 4 | tail -10 | grep -c "female" 
