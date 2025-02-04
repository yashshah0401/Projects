echo '#!/bin/bash

test_calculate_slope() {
    read -p "Enter the value of x: " x
    read -p "Enter the value of y: " y
    read -p "Enter the value of b: " b

    local expected_m=$(echo "scale=2; ($y - $b) / $x" | bc)
    local m=$(./calculate_slope.sh $x $y $b)

    echo "Calculated slope (m): $m"
    if [ "$m" == "$expected_m" ]; then
        echo "Test passed!"
    else
        echo "Test failed: expected $expected_m but got $m"
        exit 1
    fi
}

test_calculate_slope' > test_calculate_slope.sh
chmod +x test_calculate_slope.sh
