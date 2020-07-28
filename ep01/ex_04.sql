
-- Ex4: Quantos produtos de 'beleza_saude' com menos de 1 litro?

SELECT product_id,
        product_category_name,
       product_length_cm * product_height_cm * product_width_cm  as vol_cm3
       
  FROM tb_products

where product_category_name = 'beleza_saude'
and  product_length_cm * product_height_cm * product_width_cm < 1000

-- 132 linhas
;
