echo '#!/bin/bash

x=$1
y=$2
b=$3

m=$(echo "scale=2; ($y - $b) / $x" | bc)
echo $m' > calculate_slope.sh
chmod +x calculate_slope.sh
