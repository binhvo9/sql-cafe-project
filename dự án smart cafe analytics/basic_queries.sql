-- 📊 Top 5 best-selling product types
SELECT product_type, SUM(transaction_qty) AS total_sold
FROM cafe_orders
GROUP BY product_type
ORDER BY total_sold DESC
LIMIT 5;

-- 💸 Revenue per month
SELECT SUBSTR(transaction_date, 1, 7) AS month,
       ROUND(SUM(unit_price * transaction_qty), 2) AS revenue
FROM cafe_orders
GROUP BY month
ORDER BY month;

-- 🏪 Revenue per store
SELECT store_id,
       ROUND(SUM(unit_price * transaction_qty), 2) AS total_revenue
FROM cafe_orders
GROUP BY store_id
ORDER BY total_revenue DESC;

-- ⏱️ Revenue by hour
SELECT SUBSTR(transaction_time, 1, 2) AS hour,
       ROUND(SUM(unit_price * transaction_qty), 2) AS hourly_revenue
FROM cafe_orders
GROUP BY hour
ORDER BY hour;

