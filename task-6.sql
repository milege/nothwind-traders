SELECT company_name, COUNT(order_id) AS orders, STRING_AGG(CAST(order_id AS text), ',') AS order_ids
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
WHERE country = 'USA'
GROUP BY company_name
HAVING COUNT(order_id) < 5
ORDER BY COUNT(order_id) ASC, company_name