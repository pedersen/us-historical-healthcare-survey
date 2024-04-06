#!/usr/bin/env bash

declare -A segments
segments[1]="https://www2.census.gov/library/publications/decennial/1940/population-volume-1/33973538v1ch03.pdf"
segments[2]="https://www2.census.gov/library/publications/decennial/1940/population-volume-1/33973538v1ch04.pdf"
segments[3]="https://www2.census.gov/library/publications/decennial/1940/population-volume-1/33973538v1ch05.pdf"
segments[4]="https://www2.census.gov/library/publications/decennial/1940/population-volume-1/33973538v1ch06.pdf"
segments[5]="https://www2.census.gov/library/publications/decennial/1940/population-volume-1/33973538v1ch07.pdf"
segments[6]="https://www2.census.gov/library/publications/decennial/1940/population-volume-1/33973538v1ch08.pdf"
segments[7]="https://www2.census.gov/library/publications/decennial/1940/population-volume-1/33973538v1ch09.pdf"
segments[8]="https://www2.census.gov/library/publications/decennial/1940/population-volume-1/33973538v1ch10.pdf"
segments[9]="https://www2.census.gov/library/publications/decennial/1940/population-volume-1/33973538v1ch11.pdf"

for segment in "${!segments[@]}"; do
    wget -O "segment-${segment}.pdf" "${segments[$segment]}"
done
