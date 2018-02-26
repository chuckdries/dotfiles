STR="@parent";
for ((i=1;i<=$1;i++))
do
    STR+="/parent"
done
bspc node -f $STR
