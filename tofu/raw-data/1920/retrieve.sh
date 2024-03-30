#!/usr/bin/env bash

declare -A segments
segments[1]="https://www2.census.gov/library/publications/decennial/1920/volume-1/41084484v1ch2.pdf"
segments[2]="https://www2.census.gov/library/publications/decennial/1920/volume-1/41084484v1ch3.pdf"
segments[3]="https://www2.census.gov/library/publications/decennial/1920/volume-1/41084484v1ch4.pdf"
segments[4]="https://www2.census.gov/library/publications/decennial/1920/volume-1/41084484v1ch5.pdf"

for segment in "${!segments[@]}"; do
    wget -O "segment-${segment}.pdf" "${segments[$segment]}"
done
