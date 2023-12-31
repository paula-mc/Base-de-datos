SELECT * FROM fontaneria.pedidos;

INSERT INTO pedidos (id_pedido, id_producto, id_cliente, fecha, cantidad) VALUES
(1, 1, 1, CURDATE(), 2),
(2, 2, 2, CURDATE(), 1), 
(3, 3, 3, CURDATE(), 4), 
(4, 4, 4, CURDATE(), 10), 
(5, 5, 5, CURDATE(), 3), 
(6, 6, 6, CURDATE(), 5), 
(7, 7, 7, CURDATE(), 1), 
(8, 8, 8, CURDATE(), 2), 
(9, 9, 9, CURDATE(), 1), 
(10, 10, 10, CURDATE(), 1);

DELETE FROM pedidos WHERE id_pedido = 1;

SELECT * FROM pedidos ;



CREATE PROCEDURE precio_medio()
SELECT nombre, sum(total) as precio from productos inner join pedidos on productos.id_productos=pedidos.id_almacen group by nombre;

DELIMITER //
CREATE TRIGGER 'antiguedad_stock'
BEFORE UPDATE ON 'pedidos'
FOR EACH ROW
BEGIN
  IF NEW.pedido <> OLD.pedido
    THEN
      SET NEW.edad = NEW.pedido;
  END IF ;
  END 
  DELIMITER; 



