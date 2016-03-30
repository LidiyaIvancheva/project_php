<!DOCTYPE html>
   
<html lang="en">

<head>
<title>hidden_data</title>
</head>
<body>
<?php
// hidden data

if (isset($_POST["submit"])) {
    $count = $_POST["count"];
	$count++;
}
else
	$count = 1;
?>

<h2>The number of times this form has been submitted is: <?php echo($count) ?></h2>
<form action='<?php echo($_SERVER["PHP_SELF"]) ?>' method='post'>
<p><input type='hidden' name='count' value='<?php echo($count) ?>'/>
<input type='submit' name='submit'/></p>
</form>
</body>
</html>
