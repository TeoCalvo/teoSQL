with tb_categorias_2kg as (

    select product_category_name
    from tb_products
    where product_category_name is not null
    group by product_category_name
    having avg( product_weight_g ) > 2000

)

select t1.*
from tb_products as t1
where t1.product_category_name in  (select product_category_name  from tb_categorias_2kg)

;