-- ### Ex3
-- Qual o peso médio dos produtos vendidos por sellers de cada estado?
-- Considere apenas o ano de 2017 e pedidos entregues nesta análise.

SELECT  T3.seller_state,
               AVG(T4.product_weight_g) AS pedo_medio

FROM tb_orders as T1

LEFT JOIN tb_order_items as T2
ON T1.order_id = T2.order_id

LEFT JOIN tb_sellers AS T3
ON T2.seller_id = T3.seller_id

LEFT JOIN tb_products as T4
ON T2.product_id = T4.product_id

WHERE T1.order_status = 'delivered'
AND cast( strftime( '%Y', T1.order_purchase_timestamp) as integer) = 2017

GROUP BY T3.seller_state