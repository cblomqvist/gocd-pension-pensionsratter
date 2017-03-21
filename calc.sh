#!/usr/bin/env bash
set -e
mkdir -p output/pensionsratter
INPUT=upstream/output
alderspensionsavgift=$(cat ${INPUT}/alderspensionsavgift.txt)
allman_pensionsavgift=$(cat ${INPUT}/allman_pensionsavgift.txt)
arbetsgivaravgift_och_egenavgift=$(cat ${INPUT}/arbetsgivaravgift_och_egenavgift.txt)
res=$(echo "scale=0; (${alderspensionsavgift} + ${allman_pensionsavgift} + ${arbetsgivaravgift_och_egenavgift}) / 1" | bc -l)
echo ${res} > output/pensionsratter.txt

# Fordelning mellan Premiepension och Inkomstpension
export PREMIEPENSION=0.135
export INKOMSTPENSION=0.865
echo ${PREMIEPENSION} > output/premiepension.txt
echo ${INKOMSTPENSION} > output/inkomstpension.txt
