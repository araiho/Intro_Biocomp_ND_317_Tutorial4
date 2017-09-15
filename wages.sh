#gender in first column and yearsExperience in second column with a space
#sep columns. Rows sorted by gneder and then yearsExperience

cat wages.csv | awk '$1~/female/{print}' | sort -k2 -n > genderYearExperience.txt
cat wages.csv | awk '$1~/male/{print}' | sort -k2 -n >> genderYearExperience.txt

