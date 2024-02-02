function agregarProducto() {
    // Obtener datos del formulario
    var nombre = document.getElementById("nombre").value;
    var precio = document.getElementById("precio").value;
    var descripcion = document.getElementById("descripcion").value;

    // Crear objeto con los datos del producto
    var producto = {
        nombre: nombre,
        precio: precio,
        descripcion: descripcion
    };

    // Realizar una solicitud al servidor (puede ser a través de AJAX, Fetch, etc.)
    fetch('/api/agregarProducto', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(producto)
    })
    .then(response => response.json())
    .then(data => {
        // Mostrar el resultado en la página
        document.getElementById("resultado").innerHTML = data.message;
    })
    .catch(error => {
        console.error('Error:', error);
        document.getElementById("resultado").innerHTML = 'Error al agregar producto';
    });
}