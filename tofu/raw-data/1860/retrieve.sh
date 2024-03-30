#!/usr/bin/env bash

declare -A states
states["al"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-04.pdf"
states["ar"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-05.pdf"
states["ca"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-06.pdf"
states["ct"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-07.pdf"
states["de"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-08.pdf"
states["fl"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-09.pdf"
states["ga"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-10.pdf"
states["il"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-11.pdf"
states["in"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-12.pdf"
states["ia"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-13.pdf"
states["ks"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-14.pdf"
states["ky"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-15.pdf"
states["la"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-16.pdf"
states["me"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-17.pdf"
states["md"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-18.pdf"
states["ma"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-19.pdf"
states["mi"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-20.pdf"
states["mn"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-21.pdf"
states["ms"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-22.pdf"
states["mo"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-23.pdf"
states["nh"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-24.pdf"
states["nj"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-25.pdf"
states["ny"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-26.pdf"
states["nc"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-27.pdf"
states["oh"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-28.pdf"
states["or"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-29.pdf"
states["pa"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-30.pdf"
states["ri"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-31.pdf"
states["sc"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-32.pdf"
states["tn"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-33.pdf"
states["tx"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-34.pdf"
states["vt"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-35.pdf"
states["va"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-36.pdf"
states["wi"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-37.pdf"

declare -A territories
territories["colorado"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-38.pdf"
territories["dakota"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-39.pdf"
territories["nebraska"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-40.pdf"
territories["nevada"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-41.pdf"
territories["new-mexico"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-42.pdf"
territories["utah"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-43.pdf"
territories["washington"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-44.pdf"
territories["dc"]="https://www2.census.gov/library/publications/decennial/1860/population/1860a-45.pdf"

function dl-group() {
    local prefix=$1
    local -n arr=$2

    for name in "${!arr[@]}"; do
        wget -O "${prefix}-${name}.pdf" "${arr[$name]}"
    done
}

dl-group state states
dl-group territory territories
