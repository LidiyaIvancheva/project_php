<!DOCTYPE html>
<html>
<head>
  <h1 style="text-align:center;color:#003399"> <b>List of upcoming events</b></h1><br>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
  <title> List of upcoming events </title>
  </head>
<body>
  <button style="margin: 0% 0% 0% 45%;" onclick="window.location.href='add_event2.php'" type="button" class="btn btn-success">Add  new event</button><br><br>
  <table style="border: 1px solid grey;" class="table table-condensed">
    <tr>
      <th style='border: 1px solid grey; text-align: center;'><b style="color:#0099FF;">№</b></th>
      <th style='border: 1px solid grey; text-align: center'><b style="color:#0099FF;">Event name</b></th>
      <th style='border: 1px solid grey; text-align: center'><b style="color:#0099FF;">Description</b></th>
      <th style='border: 1px solid grey; text-align: center'><b style="color:#0099FF;">Date published</b></th>
      <th style='border: 1px solid grey; text-align: center'><b style="color:#0099FF;">Price</b></th>
      <th style='border: 1px solid grey; text-align: center'><b style="color:#0099FF;">Date of the event</b></th>
      <th style='border: 1px solid grey; text-align: center'><b style="color:#0099FF;">Number of seats</b></th>
      <th style='border: 1px solid grey; text-align: center'><b style="color:#0099FF;">Date of events end</b></th>
    </tr>
<?php
echo "<body style='background-color:#CCFFFF'>";
require_once('connect2.php');
$a = "SELECT * FROM events WHERE date_deleted IS NULL";
$res = mysqli_query($conn, $a);
 if(mysqli_num_rows($res) > 0){
  while($row= mysqli_fetch_assoc($res)){
    echo '<tr style="border: 1px solid grey;">';
    echo '<td style="border: 1px solid grey;">' .'<b>' . $row['id_events'] . '</b>' . '</td>';
    echo '<td style="border: 1px solid grey;">' . '<b>' . $row['event_name'] . '</b>' . '</td>';
    echo '<td style="border: 1px solid grey;">' . '<b>' . $row['description'] . '</b>' . '</td>';
    echo '<td style="border: 1px solid grey;">' . '<b>' . $row['published_date'] . '</b>' . '</td>';
    echo '<td style="border: 1px solid grey;">' . '<b>' . $row['price'] . '</b>' . '</td>';
    echo '<td style="border: 1px solid grey;">' . '<b><mark>' . $row['event_date'] . '</b></mark>' . '</td>';
    echo '<td style="border: 1px solid grey;">' . '<b>' . $row['seats'] . '</b>' . '</td>';
    echo '<td style="border: 1px solid grey;">' . '<b>' . $row['end_date'] . '</b>' . '</td>';
    echo '<td style="border: 1px solid grey; text-align:center"><button onclick="location.href=\'update_company.php?id_events='.$row['id_events'].'\'" type="button" class="btn btn-primary">Update</button></td>';
    echo '<td style="border: 1px solid grey; text-align:center"><button onclick="location.href=\'delete_company.php?id_events='.$row['id_events'].'\'" type="button" class="btn btn-danger">Delete</button></td>';
    echo '</tr>';
  }
}
?>
</table>
</body>
</html>