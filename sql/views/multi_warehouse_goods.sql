CREATE VIEW multi_warehouse_goods AS
SELECT
    g.item_name,
    COUNT(DISTINCT st.warehouse_code) AS warehouse_count
FROM Store st
JOIN Goods g ON st.cargo_ID = g.cargo_ID
GROUP BY g.item_name
HAVING warehouse_count > 1;
