echo '#!/bin/bash

read -p "value of x: " x 
read -p "vlaue of y: " y
read -p "value of b: " b

m=$(echo "sacle=2; ($y - $b) / $x" | bc)
echo "The value of m is: $m"' > calculate_slope.sh
chmod +x calculate_slope.sh
