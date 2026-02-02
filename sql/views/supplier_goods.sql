CREATE VIEW supplier_goods AS
SELECT
    s.supplier_ID,
    s.company,
    s.dangerous_goods_storage,
    g.cargo_ID,
    g.item_name,
    g.type_of_goods
FROM Supplier s
LEFT JOIN Goods g ON s.supplier_ID = g.supplier_ID;
