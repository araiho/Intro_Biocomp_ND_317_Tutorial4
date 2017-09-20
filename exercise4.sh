### Not sure if I did hint correctly
### $1 - filename (data set)

## Question 1

echo "sort by gender, then by yearsExperience"
cat $1 | cut -d , -f 1,2 | sed 's/,/ /g' | sort -k1,1 -k2,2n

## Question 3
# High school experience (12 years)

echo "high school minimum wage"
cat $1 | cut -d , -f 3,4 | awk -F, '$1=="12"' | sort -k2 -n | 
head -n 1| cut -d , -f 2

# College experience (16 years)

echo "college minimum wage"
cat $1 | cut -d , -f 3,4 | awk -F, '$1=="16"' | sort -k2 -n | 
head -n 1| cut -d , -f 2

# Difference in minimum wage for earners

