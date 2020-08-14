
drop table if exists tb_orders_delivered;
create table tb_orders_delivered as

select t1.*

from tb_orders as t1

-- Filtro ou regra de negócio
where order_status = 'delivered'
;