--Ex2: Quantos produtos tem mais de 5 litros?

SELECT product_id,
       product_category_name,
       product_name_lenght,
       product_description_lenght,
       product_photos_qty,
       product_weight_g,
       product_length_cm,
       product_height_cm,
       product_width_cm,
       product_length_cm * product_height_cm * product_width_cm as volume_item_cm3
  FROM tb_products

where   product_length_cm * product_height_cm * product_width_cm > 5000

-- 19407 linhas
;
