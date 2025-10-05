dir=$1

find $dir -type d -exec du -sk {} + | sort -nr | head -n 5 | while read size path; do
    echo "$path, $size"
done