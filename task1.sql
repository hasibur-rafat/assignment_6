SELECT
    C.name,
    C.email,
    C.location,
    COUNT(O.order_id) AS total_orders
FROM Customers C
LEFT JOIN Orders O ON C.customer_id = O.customer_id
GROUP BY C.customer_id, C.name, C.email, C.location
ORDER BY total_orders DESC;