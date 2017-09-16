#script takes gender in first column and yearsExperience in second column with a space
#separating columns. Rows sorted by gender and then yearsExperience from wages.csv file
##usage: bash wages.sh and then type cat genderYearExperience.txt

cat wages.csv | awk '$1~/female/{print}' | sort -n -k2 | tr "," " " | sed 's/male/m/g' | sed 's/fem/f/g' | awk '$1~/f/{print $1 " " $2}' | uniq | sort -n -k2 > females.txt

cat wages.csv | awk '$1~/male/{print}' | sort -n -k2 | tr "," " " | sed 's/male/m/g' | sed 's/fem/f/g' |  awk '$1~/m/{print $1 " " $2}' | uniq | sort -n -k2 > males.txt

cat females.txt males.txt > genderYearExperience.txt

cat genderYearExperience.txt | sed 's/m/male/g' | sed 's/f/female/g'
