LENGTHS=(16 25 36 49 64 81 100 121 144 169 196 225 256 289 324 361 400 441 484 529 576 625 676 729 784)

# Greedy (2 + 1) GA
for l in ${LENGTHS[@]}
do
	for seed in {0..199..1}
	do
		echo -ne "$l    ${seed}\r"
		sum=$((l+seed))
		python solver.py -p maxsat -S uniform -a greedy -m 2 -r $sum -e 10000 test_data/maxsat/maxsat_${l}_${seed}.txt
	done
done
exit
