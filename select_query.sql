-- 1. Напишіть SQL команду, за допомогою якої можна:

-- вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products;

SELECT * FROM Products;

-- вибрати тільки стовпчики name, phone з таблиці shippers,

SELECT name, phone FROM shippers;

-- 2. Напишіть SQL команду, за допомогою якої можна знайти середнє, максимальне
-- та мінімальне значення стовпчика price таблички products, та перевірте
-- правильність її виконання в MySQL Workbench*.*

SELECT 
    AVG(price) AS average_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM Products;


-- 3. Напишіть SQL команду, за допомогою якої можна обрати унікальні значення колонок category_id та price таблиці products.
-- Оберіть порядок виведення на екран за спаданням значення price та виберіть тільки 10 рядків. Перевірте правильність виконання команди в MySQL Workbench.

SELECT DISTINCT category_id, price
FROM Products
ORDER BY price DESC
LIMIT 10;

-- 4. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків), які знаходиться в цінових межах від 20 до 100, та перевірте правильність її виконання в MySQL Workbench.

SELECT COUNT(*) AS total_products
FROM Products
WHERE price BETWEEN 20 AND 100;

-- 5. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків) та середню ціну (price) у кожного постачальника (supplier_id), та перевірте правильність її виконання в MySQL Workbench.

SELECT 
    supplier_id,
    COUNT(*) AS product_count,
    AVG(price) AS average_price
FROM Products
GROUP BY supplier_id;