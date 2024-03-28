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
    <h2>Cars Form</h2>
    <div class="form">

      <div class="input">
        <label for="brand">Brand</label>
        <input type="text" name="brand" id="brand" equired>
      </div>

      <div class="input">
        <label for="model">Model</label>
        <input type="text" name="model" id="model" required>
      </div>

      <div class="input">
        <label for="year">Year</label>
        <input type="number" name="year" id="year" required>
      </div>

      <div class="input">
        <label for="color">Color</label>
        <input type="text" name="color" id="color" required>
      </div>

      <div class="input">
        <label for="license_plate">License Plate</label>
        <input type="text" name="license_plate" id="license_plate" required>
      </div>
      <?php
      // Establecer la conexión a la base de datos
      $servername = "localhost"; // Cambia esto por tu servidor de base de datos
      $username = "root"; // Cambia esto por tu nombre de usuario de MySQL
      $password = "root"; // Cambia esto por tu contraseña de MySQL
      $database = "gearbox"; // Cambia esto por el nombre de tu base de datos
      
      $conn = new mysqli($servername, $username, $password, $database);

      // Verificar la conexión
      if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }

      // Consulta para seleccionar todos los clientes
      $sql = "SELECT customer_id, first_name, last_name FROM customers";
      $result = $conn->query($sql);

      // Verificar si hay resultados y mostrar los clientes en un select
      if ($result->num_rows > 0) {
        echo '<div class="input">';
        echo '<label for="customer_id">Customer</label>';
        echo '<select name="customer_id" id="customer_id" required>';
        while ($row = $result->fetch_assoc()) {
          echo '<option value="' . $row["customer_id"] . '">' . $row["first_name"] . ' ' . $row["last_name"] . '</option>';
        }
        echo '</select>';
        echo '</div>';
      } else {
        echo "No customers found";
      }

      // Cerrar la conexión
      $conn->close();
      include("vehicles.php")
        ?>
    </div>



    <input type="submit" name="sendCars" value="Send">

  </form>

  <div class="vehiclesform">
    <a href="./index.php">Customer Form</a>
  </div>
</body>

</html>