dir=$1

find "$dir" -type d -exec chmod 750 {} +
find "$dir" -type f -exec chmod 640 {} +