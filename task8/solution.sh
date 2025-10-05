dir=$1
archive_dir=$2

mkdir -p "$archive_dir"

find $dir -type f -name "*.log" -mtime +7 | while read logfile; do
    filename=$(basename "$logfile")
    cp "$logfile" "$archive_dir/$filename"
    gzip -f "$archive_dir/$filename"
done