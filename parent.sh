((NUM = $1 - 1))
STR="@parent";
for ((i=1;i<=$NUM;i++))
do
    STR+="/parent"
done
echo $STR
