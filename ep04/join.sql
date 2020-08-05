-- OBEJTIVO: Calcular quantidade de vendas (pedidos), itens vendidos, e Receita (dinheiros) por categoria de produto,
-- durante o ano de 2017 e foram entregues

SELECT T3.product_category_name, -- categoria de produto

               COUNT(T1.order_id) AS qtd_itens_vendidos,
               COUNT(DISTINCT T1.order_id) AS qtd_pedidos,
               ROUND(SUM(T2.price),2 )AS receita -- receita
               /*T1.customer_id,
               T1.order_status,
               T1.order_purchase_timestamp,
               T2.product_id, */

FROM tb_orders AS T1 -- Primeira tabela, tabela de pedidos

LEFT JOIN tb_order_items AS T2 -- Segunda tabela, tabela de pedido/item
ON T1.order_id = T2.order_id

LEFT JOIN tb_products AS T3 --  Terceira tabela, tabela de produtos
ON T2.product_id = T3.product_id

WHERE strftime( '%Y', date(T1.order_approved_at )) = '2017' -- ano 2017
AND T1.order_status = 'delivered' -- pedidos entregues com sucesso

GROUP BY T3.product_category_name 

;