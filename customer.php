<?php

include("conection.php");
if (isset($_POST["sendCustomer"])) {
  $first_name = $_POST["first_name"];
  $last_name = $_POST["last_name"];
  $address = $_POST["address"];
  $phone = $_POST["phone"];
  $email = $_POST["email"];
  $sql = "INSERT INTO customers (first_name, last_name, address, phone, email) VALUES ('$first_name', '$last_name', '$address', '$phone', '$email')";
  if ($conection->query($sql) === TRUE) {
    echo "Customer added successfully";
  } else {
    echo "Error: " . $sql . "<br>" . $conection->error;
  }
}