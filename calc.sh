alderspensionsavgift=$(cat target/alderspensionsavgift.txt)
allman_pensionsavgift=$(cat target/allman_pensionsavgift.txt)
arbetsgivaravgift_och_egenavgift=$(cat target/arbetsgivaravgift_och_egenavgift.txt)
let res="${alderspensionsavgift} + ${allman_pensionsavgift} + ${arbetsgivaravgift_och_egenavgift}"
echo ${res} > target/pensionsratter.txt

