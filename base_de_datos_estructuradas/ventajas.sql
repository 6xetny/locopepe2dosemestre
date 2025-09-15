-- Ventajas de las vistas 
simplicidad : simplifican consultas complejas
seguridad : restringen acceso a columnas/filas especificas 
abstraccion : ocultan la complejidad de la estructura de datos 

-- Limitacion de las vistas 
rendimimiento : pueden ser mas lentas que las consultas directas
actualibilidad : las vistas  complejas generalmente son de lectura 
dependencias : cambios en tablas base pueden afectar las vistas
almacenamiento : No almacenan datos, siempre recalculan 

-- Buenas practicas 
nombrando: Usar prefijos como "v_"