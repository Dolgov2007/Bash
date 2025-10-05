dir=$1
search=$2
replace=$3

find $dir -type f -name "*.txt" | while read file; do
    sed -i '' "s/$search/$replace/g" "$file"
done 