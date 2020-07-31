--Ex4. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria.
--Considere apenas os objetos que tenham a descrição maior que 50.
-- Exiba apenas as categorias com tamanho médio de descrição do objeto maior que 100 caracteres.

select product_category_name,
       max( product_name_lenght ) as max_nome,
       min( product_name_lenght ) as min_nome,
       avg( product_name_lenght ) as avg_nome

from tb_products

where product_description_lenght > 50

group by product_category_name

having product_description_lenght > 100