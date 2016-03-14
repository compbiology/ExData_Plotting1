grep Date household_power_consumption.txt  | tr ';' ',' > household_power_cons_subset_feb1and2_2007.csv
grep "^[1-2]/2/2007" household_power_consumption.txt | tr ';' ',' >>   household_power_cons_subset_feb1and2_2007.csv
