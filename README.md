# GearBox Garage 🔧🚗

Un sistema de gestión para talleres mecánicos que permite registrar clientes y sus vehículos utilizando PHP y MySQL.

## Descripción

GearBox Garage es una aplicación web desarrollada con PHP y MySQL que permite a los talleres mecánicos gestionar de manera eficiente los datos de sus clientes y los vehículos que poseen. La aplicación ofrece un formulario para el registro de clientes y otro para el registro de vehículos asociados a dichos clientes.

## Características

- Registro de clientes con información personal (nombre, apellido, dirección, teléfono, email)
- Registro de vehículos asociados a clientes (marca, modelo, año, color, matrícula)
- Interfaz de usuario sencilla e intuitiva
- Diseño responsivo
- Conexión segura a base de datos MySQL

## Estructura del Proyecto

```
gearbox-garage/
│
├── conection.php     # Configuración de conexión a la base de datos
├── customer.php      # Lógica para gestionar clientes
├── vehicles.php      # Lógica para gestionar vehículos
├── index.php         # Página principal con formulario de clientes
├── formcars.php      # Formulario para registrar vehículos
├── style.css         # Estilos CSS
└── images/
    └── bg.jpg        # Imagen de fondo
```

## Requisitos

- PHP 7.0 o superior
- MySQL 5.7 o superior
- Servidor web (Apache, Nginx, etc.)
- Navegador web moderno

## Instalación

1. Clona este repositorio en tu servidor web
   ```
   git clone https://github.com/tu-usuario/gearbox-garage.git
   ```

2. Crea una base de datos MySQL llamada `gearbox`

3. Ejecuta el siguiente script SQL para crear las tablas necesarias:

```sql
CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cars (
  car_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  brand VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  year INT NOT NULL,
  color VARCHAR(30) NOT NULL,
  license_plate VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```

4. Configura los parámetros de conexión a la base de datos en el archivo `conection.php` según tu entorno

```php
$server = "localhost:3306";  // Cambia según tu configuración
$user = "tu_usuario";        // Cambia según tu configuración
$pass = "tu_contraseña";     // Cambia según tu configuración
$db = "gearbox";
```

5. Accede a la aplicación a través de tu navegador web

## Uso

1. **Registro de Clientes**:
   - Accede a la página principal (`index.php`)
   - Completa el formulario con los datos del cliente
   - Haz clic en "Send" para guardar los datos

2. **Registro de Vehículos**:
   - Haz clic en "CARS FORM" en la página principal
   - Selecciona un cliente del desplegable
   - Completa el formulario con los datos del vehículo
   - Haz clic en "Send" para guardar los datos

## Seguridad

⚠️ **Nota importante**: Este proyecto es una demo y no implementa todas las medidas de seguridad necesarias para un entorno de producción. Para usar en producción, considera:

- Implementar validación de entrada de datos
- Utilizar consultas preparadas para prevenir inyecciones SQL
- Implementar autenticación y autorización de usuarios
- Configurar HTTPS

## Contribuir

Las contribuciones son bienvenidas. Por favor, sigue estos pasos:

1. Haz un fork del repositorio
2. Crea una rama para tu feature (`git checkout -b feature/nueva-caracteristica`)
3. Haz commit de tus cambios (`git commit -m 'Añadir nueva característica'`)
4. Haz push a la rama (`git push origin feature/nueva-caracteristica`)
5. Abre un Pull Request
