LENGTHS=("100_5_0.25" "100_5_0.5" "100_5_0.75" "100_10_0.25" "100_10_0.5" "100_10_0.75" "100_30_0.25" "100_30_0.5" "100_30_0.75" "250_5_0.25" "250_5_0.5" "250_5_0.75" "250_10_0.25" "250_10_0.5" "250_10_0.75" "250_30_0.25" "250_30_0.5" "250_30_0.75" "500_5_0.25" "500_5_0.5" "500_5_0.75" "500_10_0.25" "500_10_0.5" "500_10_0.75" "500_30_0.25" "500_30_0.5" "500_30_0.75")

# (1 + 1) EA
for l in ${LENGTHS[@]}
do
	for seed in {0..9..1}
	do
		echo -ne "$l    ${seed}\r"
		sum=$((seed))
		python solver.py -R -p mkp -m 1 -l 1 -S uniform -a plus -r $sum -e 10000 test_data/mkp/mkp_${l}_${seed}.txt
	done
done
exit
