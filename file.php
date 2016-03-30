<!DOCTYPE html>
   
<html lang="en">

<head>
<title>file_for_read</title>
</head>
<body>
<?php
// file for read

$fileTextFile = fopen ("project/PastEvents.doc",'w');

$dataOne = "Past";
$dataTwo = "Events";

fwrite($fileTextFile, $dataOne);
fwrite($fileTextFile, $dataTwo);

if (!fclose($fileTextFile))
    echo "<p>Error closing file!</p>";
else
	echo "<p>Closed Successfully</p>";
?>
</body>
</html>