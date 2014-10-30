# input: cho n file co ten chu hoa, vi du: HOA.txt
# output: doi n file co ten chua hoa thanh chu thuong, ten file input dc truyen vao nhu tham so
echo "total number of parameters: $#"
echo "all the parameters will be listed: $@"
for (( i = 1; i <= $#; i++))
do
  lower=lowercase($i)
  `mv $i $lower`
done
