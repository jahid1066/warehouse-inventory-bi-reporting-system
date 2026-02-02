CREATE VIEW staff_supplier AS
SELECT
    st.staff_ID,
    st.name_,
    st.job_position,
    st.gender,
    st.email,
    s.company AS supplier
FROM Staff st
LEFT JOIN Supplier s ON st.supplier_ID = s.supplier_ID;
