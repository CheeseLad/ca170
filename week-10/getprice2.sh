symbol=$1
day=$2
month=$3
year=$4

wget -q -O - "https://bigcharts.marketwatch.com/historical/default.asp?symb=$symbol&closeDate=$month%2F$day%2F$year" | tr -d '\015' | tr '\n' ' ' | sed 's|^.*Closing Price:</th>||g' | sed 's|</td>.*$|\n|g' | sed 's|^.*<td>||g'
