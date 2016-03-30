<!DOCTYPE html>
   
<html lang="en">

<head>
</head>
<body>
<h2>Please select your favorite country for events:</h2>

<form action='<?php echo $_SERVER["PHP_SELF"]; ?>' method='post'>
<p>
<label for="bulgaria">Bulgaria: </label>
<input type='checkbox' name='bulgaria' value='bg' id='bg'/>
<label for="poland">Poland: </label>
<input type='checkbox' name='poland' value='pl' id='pl'/>
<label for="france">France: </label>
<input type='checkbox' name='france' value='france' id='fr'/>
<label for="germany">Germany: </label>
<input type='checkbox' name='germany' value='de' id='de'/></p>
<p><input type='submit' name='submit'/></p>
</form>

<?php
// anketa

if (isset($_POST["submit"])) {
    $bulgaria = $_POST["bulgaria"];
    $poland = $_POST["poland"];
    $france = $_POST["france"];
    $germany = $_POST["germany"];
    echo "<p>Your favorite countries are $bulgaria $poland $france $germany</p>";
}
?>
</body>
</html>