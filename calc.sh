alderspensionsavgift=$(cat target/alderspensionsavgift.txt)
allman_pensionsavgift=$(cat target/allman_pensionsavgift.txt)
arbetsgivaravgift_och_egenavgift=$(cat target/arbetsgivaravgift_och_egenavgift.txt)
res=$(echo "scale=0; (${alderspensionsavgift} + ${allman_pensionsavgift} + ${arbetsgivaravgift_och_egenavgift}) / 1" | bc -l)
echo ${res} > target/pensionsratter.txt

