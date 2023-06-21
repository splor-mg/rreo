.PHONY: transform

transform: data/base_gifp_2018_2022.xlsx

data/base_gifp_2018_2022.xlsx: scripts/base.R
	Rscript scripts/base.R

check: 