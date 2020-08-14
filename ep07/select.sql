    select *

    from tb_orders_delivered as t1

    left join tb_order_items as t2
    on t1.order_id = t2.order_id

    left join tb_sellers as t3
    on t2.seller_id = t3.seller_id

    left join tb_customers as t4
    on t1.customer_id = t4.customer_id

    left join tb_products as t5
    on t2.product_id = t5.product_id

    where t1.order_status = 'delivered'

    and t1.order_approved_at >= '{date_start}'
    and t1.order_approved_at < '{date_end}'
