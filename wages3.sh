#prints the difference of graduating college on average minimum wage for earners in the wages.csv dataset.
#Final printout is the average minimum wage dollar difference between workers who graduated from college
#minus the average minimum  wage of workers who graduated from highschool
##usage: bash wages3.sh

#creates sorted list of minumum wages of college graduates from lowest minimum wage to highest
cat wages.csv | tr "," " " | awk '{print $3 " " $4}' | awk '$1~/16/{print}' | sort -n > collegeGrads.txt

#creates sorted list of minimum wages of high school graduates from lowest minimum wage to highest
cat wages.csv | tr "," " " | awk '{print $3 " " $4}' | awk '$1~/12/{print}' | sort -n >> highschoolGrads.txt

#to find average wage of a college grad
cat collegeGrads.txt | awk '{ sum += $2; n++ } END { if (n > 0) print sum / n; }' > "val1"

#to find average wage of a high school grad
cat highschoolGrads.txt | awk '{ sum += $2; n++ } END { if (n > 0) print sum / n; }' > "val2"

#to find difference in average minimum wage between a high school and college graduate
val1=$(cat collegeGrads.txt | awk '{sum += $2; n++ } END { if (n > 0) print sum / n; }')
val2=$(cat highschoolGrads.txt | awk '{ sum += $2; n++ } END { if (n > 0) print sum / n; }')
echo "$val1 - $val2" | bc
