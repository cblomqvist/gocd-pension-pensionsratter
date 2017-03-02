#!/usr/bin/env bash
set -e
mkdir -p output/pensionsratter
alderspensionsavgift=$(cat input/alderspensionsavgift.txt)
allman_pensionsavgift=$(cat input/allman_pensionsavgift.txt)
arbetsgivaravgift_och_egenavgift=$(cat input/arbetsgivaravgift_och_egenavgift.txt)
res=$(echo "scale=0; (${alderspensionsavgift} + ${allman_pensionsavgift} + ${arbetsgivaravgift_och_egenavgift}) / 1" | bc -l)
echo ${res} > output/pensionsratter/res.txt

