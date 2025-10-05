num_files=$(find "$1" -type f | wc -l)
num_dir=$(find "$1" -type d | wc -l)

largest_file=$(find "$1" -type f -exec stat -f "%z %N" {} + | sort -nr | head -n 1)
largest_size=$(echo "$largest_file" | awk '{print $1}')
largest_name=$(basename "$(echo "$largest_file" | cut -d' ' -f2-)")

printf "Files: %d\n" "$num_files"
printf "Dirs: %d\n" "$num_dir"
echo "$largest_name"