
-- ### Ex2
-- Qual o valor total de receita gerada por sellers de cada estado?
-- Considere a base completa, com apenas pedidos entregues

SELECT T3.seller_state,
                sum( T2.price ) AS receita_total

FROM tb_orders as T1

LEFT JOIN tb_order_items as T2
ON T1.order_id = T2.order_id

LEFT JOIN tb_sellers as T3
ON T2.seller_id = T3.seller_id

WHERE order_status = 'delivered'

GROUP BY T3.seller_state