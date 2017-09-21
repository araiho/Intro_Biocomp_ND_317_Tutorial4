##usage: bash wages2.sh

#finds the gender, yearsExperience and wage for the highest earner and lowest earner
cat wages.csv | tr "," " " | awk '{print $1 " " $2 " " $4}' | sort -n -k3 | tail -1 > highestEarner.txt

cat wages.csv | tr "," " " | awk '{print $1 " " $2 " " $4}' | sort -n -k3 | head -2 | tail -1 > lowestEarner.txt

#lists the top ten earners in this data set
cat wages.csv | tr "," " " | awk '{print $1 " " $2 " " $4}' | sort -n -k3 | tail -10 > topTen.txt

#counts the number of women in the top ten earners in this data set
cat topTen.txt | awk ' BEGIN {count=0;} { if ($1 == "female") count+=1} END {print count}' > topTenFemales.txt

#print highest earner, lowest earner and number of females in the top ten earners in this data set

echo "lowest earner:" ; cat lowestEarner.txt
echo "highest earner:" ; cat highestEarner.txt
echo "number of females in top ten:" ; cat topTenFemales.txt
