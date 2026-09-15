-- Rank the Top 3 Products within each category by revenue.

WITH product_revenue AS (
    SELECT
        p.product_category_name AS product_category,
        oi.product_id,
        SUM(oi.price) AS total_revenue
    FROM order_items AS oi
    JOIN products AS p
        ON oi.product_id = p.product_id
    GROUP BY
        p.product_category_name,
        oi.product_id
),

ranked_products AS (
    SELECT
        product_category,
        product_id,
        total_revenue,
        ROW_NUMBER() OVER (
            PARTITION BY product_category
            ORDER BY total_revenue DESC
        ) AS rn
    FROM product_revenue
)

SELECT
    product_category,
    product_id,
    CONCAT('$', FORMAT(total_revenue, 2)) AS total_revenue,
    rn
FROM ranked_products
WHERE rn <= 3
ORDER BY
    product_category,
    rn;