SELECT
            product_category_name,
            product_photos_qty,
            count(1) as qtd_produtos,
            round( AVG(product_length_cm * product_height_cm * product_width_cm),2) AS avg_volume
             
FROM tb_products

WHERE product_category_name IS NOT NULL

GROUP BY product_category_name, product_photos_qty

ORDER BY product_category_name, product_photos_qty