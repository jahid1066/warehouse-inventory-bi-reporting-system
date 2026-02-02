CREATE VIEW product_revenue AS
SELECT
    g.cargo_ID,
    g.item_name,
    g.type_of_goods,
    s.company AS supplier,
    g.price
FROM Goods g
JOIN Supplier s ON g.supplier_ID = s.supplier_ID;