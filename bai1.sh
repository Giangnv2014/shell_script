# Bai 1: input: Nhap so nguyen n tu ban phim
#        output: In ra ket qua tong tu 1 den n
# Bai 2: output: In ra ket qua tong cac so chan tu 1 den n

echo "Nhap so nguyen n"
read n
echo "Ban vua nhap n = $n"
sum=0
sum2=0
for (( i = 1; i <= $n; i++ ))
  do
   #sum=$[sum+i]
    sum=$(($sum + $i))
   # tmp=`expr $i % 2`
    tmp=$[i%2]
    if [ $tmp -eq 0 ]; then
      sum2=$[sum2+i]
    fi
done
echo "Tong tu 1 den $n la: $sum"
echo "Tong cac chan tu 1 den $n la: $sum2"
