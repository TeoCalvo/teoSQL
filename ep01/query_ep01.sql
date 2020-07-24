SELECT product_id,
               product_category_name,
                product_weight_g ,               
                product_weight_g / 1000 as product_weight_kg,
               product_length_cm,
               product_height_cm,
               product_width_cm,
               product_length_cm *  product_height_cm *   product_width_cm  as product_volume_cm3
  FROM tb_products
  
 WHERE (product_weight_g / 1000) >= 1
 AND product_category_name in ('automotivo', 'brinquedos')
 AND (product_length_cm *  product_height_cm *   product_width_cm) >= 1000
;