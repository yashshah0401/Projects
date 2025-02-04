echo '#!/bin/bash

test_calculate_slope() {
    local x=2
    local y=5
    local b=1
    local expected_m=2.00

    local m=$(echo "scale=2; ($y - $b) / $x" | bc)
    if [ "$m" == "$expected_m" ]; then
        echo "Test passed!"
    else
        echo "Test failed: expected $expected_m but got $m"
        exit 1
    fi
}

test_calculate_slope' > test_calculate_slope.sh
chmod +x test_calculate_slope.sh
