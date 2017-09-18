cat "$1" | tr "," " " | awk '{print $3 " " $4}' | uniq > hold2.txt
cat hold2.txt | sort -k1.1d,1 -k2.2n,2 | sed '/^3/d' | sed '/^4/d' | sed '/^5/d' | sed '/^6/d' | sed '/^7/d' | sed '/^8/d' | sed '/^9/d' | sed '/^10/d' | sed '/^11/d' | sed '/^13/d' | sed '/^14/d' | sed '/^15/d' | uniq > "$2"
