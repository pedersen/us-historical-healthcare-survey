#!/usr/bin/env bash

declare -A segments
segments[1]="https://www2.census.gov/library/publications/decennial/1870/population/1870a-05.pdf"
segments[2]="https://www2.census.gov/library/publications/decennial/1870/population/1870a-06.pdf"
segments[3]="https://www2.census.gov/library/publications/decennial/1870/population/1870a-07.pdf"
segments[4]="https://www2.census.gov/library/publications/decennial/1870/population/1870a-08.pdf"
segments[5]="https://www2.census.gov/library/publications/decennial/1870/population/1870a-09.pdf"
segments[6]="https://www2.census.gov/library/publications/decennial/1870/population/1870a-10.pdf"
segments[7]="https://www2.census.gov/library/publications/decennial/1870/population/1870a-11.pdf"

for segment in "${!segments[@]}"; do
    wget -O "segment-${segment}.pdf" "${segments[$segment]}"
done
