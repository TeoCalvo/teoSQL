--Ex1: Quantos produtos temos da categoria 'artes'?

SELECT product_id,
       product_category_name,
       product_name_lenght,
       product_description_lenght,
       product_photos_qty,
       product_weight_g,
       product_length_cm,
       product_height_cm,
       product_width_cm
  FROM tb_products

where   product_category_name = 'artes'
-- 55 linhas
;
