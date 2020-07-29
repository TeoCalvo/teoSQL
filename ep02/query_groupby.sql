SELECT
            product_category_name,
             count(1) as qtd_linhas,
              count( product_category_name) as qtd_categorias, -- conta linhas nao nulas no campo categoria
              count( distinct product_category_name) as qtd_categorias_dstc, -- conta linhas distintas para o campo categoria
              max( product_photos_qty ) as max_photo_qty, -- maior valor do campo quantidade de fotos
              min( product_photos_qty ) as min_photo_qty, -- menor valor do campo quantidade de fotos
              round(avg( product_photos_qty ) ,2 )as avg_photo_qty , -- valor médio do campo quantidade de fotos
              sum( product_photos_qty ) as sum_photo_qty, -- soma total dos valores do campo quantidade de fotos
              round(sum( product_photos_qty ) / count( product_photos_qty ),2) as avg_unha_photo_qty -- divisao entre soma de valores e contagem nao nula de qtde fotos

FROM tb_products

WHERE product_category_name IS NOT NULL

GROUP BY product_category_name

HAVING COUNT(1) > 50

ORDER BY  count(1)