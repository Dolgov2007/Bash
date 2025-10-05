dir=$1

info_count=$(grep -i "info" $dir | wc -l)
error_count=$(grep -i "error" $dir | wc -l)
warn_count=$(grep -i "warn" $dir | wc -l)

printf "INFO.*%d\n" "$info_count"
printf "ERROR.*%d\n" "$error_count"
printf "WARN.*%d\n" "$warn_count"