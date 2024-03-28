<?php


include("conection.php");
if (isset($_POST["sendCars"])) {
  $customer_id = $_POST["customer_id"];
  $brand = $_POST["brand"];
  $model = $_POST["model"];
  $year = $_POST["year"];
  $color = $_POST["color"];
  $license_plate = $_POST["license_plate"];
  $sql = "INSERT INTO cars (customer_id, brand, model, year, color, license_plate) VALUES ('$customer_id', '$brand', '$model', '$year', '$color', '$license_plate')";
  if ($conection->query($sql) === TRUE) {
    echo "Car added successfully";
  } else {
    echo "Error: " . $sql . "<br>" . $conection->error;
  }
}