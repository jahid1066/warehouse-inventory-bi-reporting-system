CREATE VIEW warehouse_utilization AS
SELECT
    w.warehouse_code,
    w.warehouse_location,
    w.warehouse_manager,
    w.remaining_capacity,
    COUNT(st.cargo_ID) AS total_goods_stored
FROM Warehouse w
LEFT JOIN Store st ON w.warehouse_code = st.warehouse_code
GROUP BY
    w.warehouse_code,
    w.warehouse_location,
    w.warehouse_manager,
    w.remaining_capacity;
