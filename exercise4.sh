#Question 1
echo "sort by gender, then by yearsExperience"
cat $1 | cut -d , -f 1,2 | sed 's/,/ /g' | sort -k1,1 -k2,2n





