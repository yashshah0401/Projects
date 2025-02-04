<?php

// This script convert input text to lowercase

if ($argc < 2){
	echo "Usage: php lowercase.php <HeLlO>\n";
	exit (1);
}

$input = $argv[1];
$lowercase = strtolower($input);

echo $lowercase . "\n";
?>
