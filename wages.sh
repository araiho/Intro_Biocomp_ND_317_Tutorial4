#script takes gender in first column and yearsExperience in second column with a space
#separating columns. Rows sorted by gender and then yearsExperience from wages.csv file
##usage: bash wages.sh and then type cat genderYearExperience.txt

cat wages.csv | awk '$1~/female/{print}' | sort -n -k2 | tr "," " " | awk '{print $1 " " $2}' | uniq | sort -n -k2 > genderYearExperience.txt
cat wages.csv | awk '$1~/male/{print}' | sort -n -k2 | tr "," " " | awk '{print $1 " " $2}' | uniq | sort -n -k2 >> genderYearExperience.txt
