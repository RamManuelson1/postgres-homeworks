-- Подключиться к БД Northwind и сделать следующие изменения:
-- 1. Добавить ограничение на поле unit_price таблицы products (цена должна быть больше 0)
ALTER TABLE products ADD CONSTRAINT chk_products_unit_price CHECK (unit_price > 0);


-- 2. Добавить ограничение, что поле discontinued таблицы products может содержать только значения 0 или 1
ALTER TABLE products ADD CONSTRAINT chk_products_discontinued CHECK (discontinued IN (0, 1));


-- 3. Создать новую таблицу, содержащую все продукты, снятые с продажи (discontinued = 1)
SELECT * INTO sold_products FROM products WHERE discontinued = 1;


-- 4. Удалить из products товары, снятые с продажи (discontinued = 1)
DELETE FROM order_details WHERE product_id IN (SELECT product_id FROM products WHERE discontinued = 1);

DELETE FROM products WHERE discontinued = 1;
