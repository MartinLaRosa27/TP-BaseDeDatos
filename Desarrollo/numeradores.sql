DELIMITER $$
CREATE TRIGGER numerador_empleado BEFORE INSERT ON empleado
FOR EACH ROW
BEGIN
SELECT siguiente INTO @idReal FROM numerador WHERE tabla = "empleado";
SET NEW.id_empleado = @idReal;
UPDATE numerador SET siguiente = siguiente + 1 WHERE tabla = "empleado";
END
$$

DELIMITER $$
CREATE TRIGGER numerador_rol BEFORE INSERT ON rol
FOR EACH ROW
BEGIN
SELECT siguiente INTO @idReal FROM numerador WHERE tabla = "rol";
SET NEW.id_rol = @idReal;
UPDATE numerador SET siguiente = siguiente + 1 WHERE tabla = "rol";
END
$$

DELIMITER $$
CREATE TRIGGER numerador_cliente BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
SELECT siguiente INTO @idReal FROM numerador WHERE tabla = "cliente";
SET NEW.id_cliente = @idReal;
UPDATE numerador SET siguiente = siguiente + 1 WHERE tabla = "cliente";
END
$$

DELIMITER $$
CREATE TRIGGER numerador_proyecto BEFORE INSERT ON proyecto
FOR EACH ROW
BEGIN
SELECT siguiente INTO @idReal FROM numerador WHERE tabla = "proyecto";
SET NEW.id_proyecto = @idReal;
UPDATE numerador SET siguiente = siguiente + 1 WHERE tabla = "proyecto";
END
$$

DELIMITER $$
CREATE TRIGGER numerador_asignacion BEFORE INSERT ON asignacion
FOR EACH ROW
BEGIN
SELECT siguiente INTO @idReal FROM numerador WHERE tabla = "asignacion";
SET NEW.id_asignacion = @idReal;
UPDATE numerador SET siguiente = siguiente + 1 WHERE tabla = "asignacion";
END
$$

DELIMITER $$
CREATE TRIGGER numerador_rendicion_hora BEFORE INSERT ON rendicion_hora
FOR EACH ROW
BEGIN
SELECT siguiente INTO @idReal FROM numerador WHERE tabla = "rendicion_hora";
SET NEW.id_rendicion = @idReal;
UPDATE numerador SET siguiente = siguiente + 1 WHERE tabla = "rendicion_hora";
END
$$

DELIMITER $$
CREATE TRIGGER numerador_liquidacion BEFORE INSERT ON liquidacion
FOR EACH ROW
BEGIN
SELECT siguiente INTO @idReal FROM numerador WHERE tabla = "liquidacion";
SET NEW.id_liquidacion = @idReal;
UPDATE numerador SET siguiente = siguiente + 1 WHERE tabla = "liquidacion";
END
$$