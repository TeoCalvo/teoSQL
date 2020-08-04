SELECT product_id,
       product_category_name,
       product_name_lenght,
       product_description_lenght,
       product_photos_qty,
       product_weight_g,
       product_length_cm,
       product_height_cm,
       product_width_cm,
       product_length_cm * product_height_cm *  product_width_cm as volume_cm3,
       case when product_weight_g > 1000 then 1 else 0 end as peso_maior_1kg,
       
       case when product_weight_g  < 500  then '0_500'
               when  product_weight_g  < 1000 then '500_1000'
               when  product_weight_g  < 2000 then '1000_2000'
               else 'mais_2000' end as fx_peso

  FROM tb_products
  
where product_category_name = 'perfumaria'
;
