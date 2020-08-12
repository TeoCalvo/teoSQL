SELECT *

FROM(

SELECT t1.order_id,
       t2.seller_id,
       t1.order_purchase_timestamp,
       row_number() OVER (PARTITION by seller_id ORDER BY RANDOM() ) AS linha

FROM tb_orders as t1 -- uma linha por pedido
    
left join tb_order_items as t2 -- uma linha por pedido e item (pode ter mais de duas linhas por pedido)
on t1.order_id = t2.order_id

where seller_id is not null

order by t2.seller_id,
         t1.order_id

)

WHERE linha = 1