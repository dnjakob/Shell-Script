<!--- Daniel Jakob Note 1 -MO --->
# Daniel Jakob - 2. Kurzarbeit

a.) `awk -F"," '{$1=$1; print $0}' customers.csv > customer.txt`

b.) `awk '{print $1, $3, $4, $5, $6, $7, $8, $10, $11, $12}' customer.txt > customer2.txt`

c.) `awk 'BEGIN{print "Id" " " "Fname" " " "Lname" " " "Company" " " "Country" " " "Phone" " " "Email" " " "Date" " " "Website"}NR>1{print $0}' customer2.txt > customer3.txt`
<!--- Leerzeichen wären hier nicht nötig gewesen - aber OK --->

d.) `awk '$1 >= 500 && $1 <= 510 {print}' customer3.txt`

e.) `awk '(($1 % 3) == 0 && NR>1){print}' customer3.txt`

f.) `awk '$2 == "Thomas"' customer3.txt`

<!--- Alles richtig, 24/24 Punkte -MO --->
