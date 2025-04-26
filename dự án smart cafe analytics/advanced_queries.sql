SELECT
  transaction_date AS order_date,
  ROUND(SUM(unit_price * transaction_qty) OVER (
    ORDER BY transaction_date
    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
  ), 2) AS rolling_7d_revenue
FROM cafe_orders;
-- doanh thu 7 ngày gần nhất từ transaction_date