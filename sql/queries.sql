-- 1. Suppliers that supply drinks
SELECT DISTINCT s.company
FROM Supplier s
JOIN Goods g ON s.supplier_ID = g.supplier_ID
WHERE g.type_of_goods = 'Drinks';

-- 2. Employee email linked to ECORETAIL GmbH
SELECT st.email
FROM Staff st
JOIN Supplier s ON st.supplier_ID = s.supplier_ID
WHERE s.company = 'ECORETAIL GmbH';

-- 3. Names with 'a' as second character
SELECT name_
FROM Staff
WHERE name_ LIKE '_a%';

-- 4. Number of female employees
SELECT COUNT(*) AS Female_Count
FROM Staff
WHERE gender = 'Female';

-- 5. Price difference
SELECT MAX(price) - MIN(price) AS Price_Difference
FROM Goods;

-- 6. Warehouse capacity descending
SELECT warehouse_location, remaining_capacity
FROM Warehouse
ORDER BY remaining_capacity DESC;

-- 7. Goods with suppliers
SELECT g.item_name, g.type_of_goods, s.company
FROM Goods g
JOIN Supplier s ON g.supplier_ID = s.supplier_ID;

-- 8. Warehouses storing Coffee
SELECT DISTINCT w.warehouse_location
FROM Store st
JOIN Goods g ON st.cargo_ID = g.cargo_ID
JOIN Warehouse w ON st.warehouse_code = w.warehouse_code
WHERE g.item_name = 'Coffee';

-- 9. Goods per supplier
SELECT s.company, COUNT(g.cargo_ID) AS total_goods
FROM Supplier s
LEFT JOIN Goods g ON s.supplier_ID = g.supplier_ID
GROUP BY s.company;

-- 10. Staff and suppliers
SELECT st.name_, st.job_position, s.company
FROM Staff st
JOIN Supplier s ON st.supplier_ID = s.supplier_ID;

-- 11. Goods stored in multiple warehouses
SELECT g.item_name, COUNT(DISTINCT st.warehouse_code) AS warehouse_count
FROM Store st
JOIN Goods g ON st.cargo_ID = g.cargo_ID
GROUP BY g.item_name
HAVING warehouse_count > 1;

-- 12. Warehouse with highest capacity
SELECT warehouse_location, remaining_capacity
FROM Warehouse
ORDER BY remaining_capacity DESC
LIMIT 1;

-- 13. Average price by goods type
SELECT type_of_goods, AVG(price) AS avg_price
FROM Goods
GROUP BY type_of_goods;

-- 14. Staff linked to dangerous goods suppliers
SELECT DISTINCT st.name_
FROM Staff st
JOIN Supplier s ON st.supplier_ID = s.supplier_ID
WHERE s.dangerous_goods_storage = 'YES';

-- 15. Goods in low-capacity warehouses (<30)
SELECT g.item_name, w.warehouse_location, w.remaining_capacity
FROM Store st
JOIN Goods g ON st.cargo_ID = g.cargo_ID
JOIN Warehouse w ON st.warehouse_code = w.warehouse_code
WHERE w.remaining_capacity < 30;

-- 16. Goods count per warehouse
SELECT w.warehouse_location, COUNT(st.cargo_ID) AS total_goods
FROM Warehouse w
LEFT JOIN Store st ON w.warehouse_code = st.warehouse_code
GROUP BY w.warehouse_location;

-- 17. Staff count per supplier
SELECT s.company, COUNT(st.staff_ID) AS total_staff
FROM Supplier s
LEFT JOIN Staff st ON s.supplier_ID = st.supplier_ID
GROUP BY s.company;

-- 18. Suppliers without goods
SELECT s.company
FROM Supplier s
LEFT JOIN Goods g ON s.supplier_ID = g.supplier_ID
WHERE g.cargo_ID IS NULL;

-- 19. Goods priced above average
SELECT item_name, price
FROM Goods
WHERE price > (SELECT AVG(price) FROM Goods);

-- 20. Top 3 expensive goods
SELECT g.item_name, g.price, s.company
FROM Goods g
JOIN Supplier s ON g.supplier_ID = s.supplier_ID
ORDER BY g.price DESC
LIMIT 3;
