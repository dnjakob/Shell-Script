# Daniel Jakob - 2. Klausur Linux

a.) `awk 'BEGIN{print "ID", "H(in)", "W(pnd)"}NR>1{print $0}' height_weight.txt > height_weight2.txt`

b.) `awk '$3<120{print}' height_weight2.txt`
    `awk '$2>70{print}' height_weight2.txt`

c.) `awk '{if ($3>120){print $1, $3, "Diät machen"} else {print $1, $3, "mehr essen"}}' height_weight2.txt`

d.) `awk  '{ avgH += $2} END{print "Durchschnittsgrösse: ", avgH/NR, "in"}' height_weight2.txt`
    `awk  '{ avgW += $3} END{print "Durchschnittsgewicht: ", avgW/NR, "pnd"}' height_weight2.txt`

e.) `awk  'BEGIN{print "ID", "H(cm)", "G(kg)"}NR>1{print $1, $2*2.54, $3/2.205}' height_weight2.txt > height_weight3.txt`

f.) `awk  'BEGIN{print "ID", "BMI"}NR>1{print $1, ($3/($2/100*$2/100))}' height_weight3.txt`
