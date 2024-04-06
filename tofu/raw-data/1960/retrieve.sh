#!/usr/bin/env bash

declare -A segments
segments[al-id]="https://www2.census.gov/library/publications/decennial/1960/population-pc-a1/15611126ch1.pdf"
segments[il-ma]="https://www2.census.gov/library/publications/decennial/1960/population-pc-a1/15611126ch2.pdf"
segments[mi-nm]="https://www2.census.gov/library/publications/decennial/1960/population-pc-a1/15611126ch3.pdf"
segments[ny-sc]="https://www2.census.gov/library/publications/decennial/1960/population-pc-a1/15611126ch4.pdf"
segments[sd-wy]="https://www2.census.gov/library/publications/decennial/1960/population-pc-a1/15611126ch5.pdf"

for segment in "${!segments[@]}"; do
    wget -O "segment-${segment}.pdf" "${segments[$segment]}"
done
