SELECT category_name AS category , COUNT(product_id) AS number_of_products FROM products
JOIN categories ON products.category_id = categories.category_id
GROUP BY category_name
ORDER BY COUNT(product_id) DESC, category_name