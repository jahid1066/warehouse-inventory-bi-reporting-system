CREATE VIEW inventory_status AS
SELECT
    g.cargo_ID,
    g.item_name,
    g.type_of_goods,
    w.warehouse_location,
    w.remaining_capacity,
    CASE
        WHEN w.remaining_capacity = 0 THEN 'FULL'
        WHEN w.remaining_capacity < 30 THEN 'LOW'
        ELSE 'OK'
    END AS inventory_status
FROM Store st
JOIN Goods g ON st.cargo_ID = g.cargo_ID
JOIN Warehouse w ON st.warehouse_code = w.warehouse_code;
