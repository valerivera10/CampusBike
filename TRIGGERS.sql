-- ······· FLUJO PRINCIPAL ·········· --

    -- ·· Trigger para validar que los campos obligatorios sean llenados por el usuario ·· --

            -- TRIGGER PARA BEFORE INSERT --
DELIMITER $$ 
DROP TRIGGER IF EXISTS validar_campos_obligatorios$$
CREATE TRIGGER validar_campos_obligatorios
BEFORE INSERT ON bicicleta
FOR EACH ROW
BEGIN
    IF NEW.modelo IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El campo modelo es OBLIGATORIO y no puede ser NULL';
    END IF;
    IF NEW.marca IS NULL THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El campo marca es OBLIGATORIO y no puede ser NULL';
    END IF;
    IF NEW.precio IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El campo precio es OBLIGATORIO y no puede ser NULL';
    END IF;
    IF NEW.stock IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El campo stock es OBLIGATORIO y no puede ser NULL';
    END IF;
END$$
DELIMITER ;

            -- TRIGGER PARA BEFORE UPDATE --
DELIMITER $$ 
DROP TRIGGER IF EXISTS validar_campos_obligatorios$$
CREATE TRIGGER validar_campos_obligatorios
BEFORE UPDATE ON bicicleta
FOR EACH ROW
BEGIN
    IF NEW.modelo IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El campo modelo es OBLIGATORIO y no puede ser NULL';
    END IF;
    IF NEW.marca IS NULL THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El campo marca es OBLIGATORIO y no puede ser NULL';
    END IF;
    IF NEW.precio IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El campo precio es OBLIGATORIO y no puede ser NULL';
    END IF;
    IF NEW.stock IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El campo stock es OBLIGATORIO y no puede ser NULL';
    END IF;
END$$
DELIMITER ;



