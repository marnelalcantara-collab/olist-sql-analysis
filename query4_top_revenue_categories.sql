-- Which product categories generate the most revenue?

SELECT
    p.product_category_name AS product_category,
    CONCAT('$', FORMAT(SUM(oi.price), 2)) AS total_revenue
FROM order_items AS oi
JOIN products AS p
    ON oi.product_id = p.product_id
GROUP BY
    p.product_category_name
ORDER BY
    SUM(oi.price) DESC;