-- ### Ex1
-- Qual o valor total de receita gerada por consumidores de cada estado?
-- Considere a base completa, com apenas pedidos entregues

SELECT T2.customer_state,
            SUM(T3.price) as receita_total

FROM tb_orders AS T1

LEFT JOIN tb_customers AS T2
ON T1.customer_id = T2.customer_id

LEFT JOIN tb_order_items AS T3
ON T1.order_id = T3.order_id

WHERE order_status = 'delivered'

GROUP BY T2.customer_state