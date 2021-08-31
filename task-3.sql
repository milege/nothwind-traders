SELECT product_name , ROUND(SUM(quantity * (order_details.unit_price - order_details.unit_price * discount))) AS sum FROM products
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_id
ORDER BY ROUND(SUM(quantity * (order_details.unit_price - order_details.unit_price * discount))) ASC
LIMIT 10