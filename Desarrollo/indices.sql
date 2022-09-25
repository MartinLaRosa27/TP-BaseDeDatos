CREATE INDEX liquidacion_index ON liquidacion(cliente, proyecto_descripcion);
CREATE INDEX cliente_index ON cliente(razon_social);
CREATE INDEX empleado_index ON empleado(nombre, apellido);
CREATE INDEX proyecto_index ON proyecto(descripcion);