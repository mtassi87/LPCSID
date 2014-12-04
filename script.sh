( find . -type f -name '*f*' ) | while read li;
do
 count=$( cat "$li" | wc -l); 

 if [ $count -gt 10 ];

   then
     echo "$li;$count"
     r=${li/f/g}; 
     mv "$li" "$r";

 fi

A
done
