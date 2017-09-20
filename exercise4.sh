### Not sure if I did hint correctly
### $1 - filename (data set)

## Question 1

echo "sort by gender, then by yearsExperience"
cat $1 | cut -d , -f 1,2 | sed 's/,/ /g' | sort -k1,1 -k2,2n

## Question 2

#Highest Earner detailed with gender, years experience, and wage
echo “Highest earner’s gender, years experience, and wage”
cat wages.csv | sort -rnk4  --field-separator=',' --key=4 | cut -d "," -f1,2,4 | head -1 


# Lowest Earner detailed with gender, years experience, and wage
echo “Lowest earner’s gender, years experience, and wage”
cat wages.csv | sort -nk4  --field-separator=',' --key=4 | cut -d "," -f1,2,4 | head -2 | tail -1 


#Number of women in top ten earners of this data set
echo “Number of women in top ten earners” 
cat wages.csv | sort -rnk4  --field-separator=',' --key=4 | cut -d "," -f1,2,4 | head -10 | grep female | wc -l 

## Question 3
# High school experience (12 years)

echo "high school minimum wage"
val1=$( cat $1 | cut -d , -f 3,4 | awk -F, '$1=="12"' | sort -nk2 --field-separator=',' --key=2 | 
head -n 1| cut -d , -f 2)
echo $val1

# College experience (16 years)

echo "college minimum wage"
val2=$( cat $1 | cut -d , -f 3,4 | awk -F, '$1=="16"' | sort -nk2 --field-separator=',' --key=2 | 
head -n 1| cut -d , -f 2)
echo $val2

# Difference in minimum wage for earners

echo "Difference in minimum wage for earners"
echo "$val2 - $val1" | bc
