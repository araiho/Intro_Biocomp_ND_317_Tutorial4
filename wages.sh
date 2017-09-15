#script takes gender in first column and yearsExperience in second column with a space
#separating columns. Rows sorted by gneder and then yearsExperience from wages.csv file
##usage: bash wages.sh and then type cat genderYearExperience.txt

cat wages.csv | awk '$1~/female/{print}' | sort -k2 -n > genderYearExperience.txt
cat wages.csv | awk '$1~/male/{print}' | sort -k2 -n >> genderYearExperience.txt

