.PHONY: all check

all: data/base_gifp_2018_2022.xlsx check

data/base_gifp_2018_2022.xlsx: scripts/base_gifp_2018_2022.R
	Rscript scripts/base.R

check: 
	Rscript checks/testthat.R 2>&1 | tee reports/checks.txt
