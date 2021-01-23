SELECT 1997 AS year, date_part('month', order_date) AS month,
COUNT(order_details.order_id) AS order_count, ROUND(SUM(quantity * (order_details.unit_price - order_details.unit_price * discount))) AS revenue
FROM order_details
JOIN orders ON order_details.order_id = orders.order_id
WHERE date_part('year', order_date) = 1997
GROUP BY date_part('month', order_date)
