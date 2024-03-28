<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GearBox Garage</title>
  <link rel="stylesheet" href="style.css">
  <script>
  function reloadPage() {
    location.reload();
  }
  </script>
</head>

<body>
  <form method="post" onsubmit="reloadPage()">
    <h1>GearBox Garage</h1>
    <h2>Customer Form</h2>
    <div class="form">

      <div class="input">
        <label for="first_name">First Name</label>
        <input type="text" name="first_name" id="first_name" required>
      </div>

      <div class="input">
        <label for="last_name">Last Name</label>
        <input type="text" name="last_name" id="last_name" equired>
      </div>

      <div class="input">
        <label for="address">Address</label>
        <input type="text" name="address" id="address" required>
      </div>

      <div class="input">
        <label for="phone">Phone</label>
        <input type="text" name="phone" id="phone" required>
      </div>

      <div class="input">
        <label for="email">Email</label>
        <input type="email" name="email" id="email" required>
      </div>

      <input type="submit" name="sendCustomer" value="Send">
    </div>

  </form>

  <div class="vehiclesform">
    <a href="./formcars.php">CARS FORM</a>
  </div>

  <?php
  include("customer.php")
    ?>
</body>

</html>