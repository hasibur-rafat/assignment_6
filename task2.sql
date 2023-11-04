SELECT
    P.name AS product_name,
    OI.quantity,
    (OI.quantity * OI.unit_price) AS total_amount
FROM Order_Items OI
JOIN Products P ON OI.product_id = P.product_id
ORDER BY OI.order_id ASC;