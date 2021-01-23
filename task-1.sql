SELECT products.product_name AS product , suppliers.company_name AS company FROM products
INNER JOIN suppliers ON products.supplier_id=suppliers.supplier_id
ORDER BY product_name, company_name