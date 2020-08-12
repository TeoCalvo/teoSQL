select product_id,
       product_category_name,     
       percent_rank() over (partition by product_category_name order by product_weight_g)

from tb_products

where product_category_name is not null