# Usage - question 3 exercise 4 - determining difference in pay based on education
# $1 is filename you are using. in our case it is wages.csv, print to screen

cat "$1" | tr "," " " | awk '{print $3 " " $4}' | uniq > hold2.txt
cat hold2.txt | sort -k1.1d,1 -k2.2n,2 | sed '/^3/d' | sed '/^4/d' | sed '/^5/d' | sed '/^6/d' | sed '/^7/d' | sed '/^8/d' | sed '/^9/d' | sed '/^10/d' | sed '/^11/d' | sed '/^13/d' | sed '/^14/d' | sed '/^15/d' | uniq > hold3.txt
echo minimum wage of college graduate
cat hold3.txt | sed '/^12/d' | sort -k2n | sed 1d | cut -d" " -f2 | head -1
echo minimum wage of high school graduate
cat hold3.txt | head -1 | cut -d" " -f2
echo the difference between the two is
