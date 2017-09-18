cat wages.csv | tr "," " " | awk '{print $3 " " $4}' | awk '$1~/16/{print}' | sort -n > collegeGrads.txt

cat wages.csv | tr "," " " | awk '{print $3 " " $4}' | awk '$1~/12/{print}' | sort -n >> highschoolGrads.txt

#to find average wage of a college grad
cat collegeGrads.txt | awk '{ sum += $2; n++ } END { if (n > 0) print sum / n; }' > "val1"

#to find average wage of a high school grad
cat highschoolGrads.txt | awk '{ sum += $2; n++ } END { if (n > 0) print sum / n; }' > "val2"

#to find difference in average minimum wage between a high school and college graduate

