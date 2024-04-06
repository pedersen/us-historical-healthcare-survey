#!/usr/bin/env bash

declare -A segments
segments[al-ga]="https://www2.census.gov/library/publications/decennial/1950/housing-volume-1/36965082v1p2.zip"
segments[id-ma]="https://www2.census.gov/library/publications/decennial/1950/housing-volume-1/36965082v1p3.zip"
segments[mi-ny]="https://www2.census.gov/library/publications/decennial/1950/housing-volume-1/36965082v1p4.zip"
segments[nc-tn]="https://www2.census.gov/library/publications/decennial/1950/housing-volume-1/36965082v1p5.zip"
segments[tx-wy]="https://www2.census.gov/library/publications/decennial/1950/housing-volume-1/36965082v1p6.zip"
segments[territories]="https://www2.census.gov/library/publications/decennial/1950/housing-volume-1/36965082v1p7.zip"

for segment in "${!segments[@]}"; do
    wget -O "segment-${segment}.zip" "${segments[$segment]}"
done
