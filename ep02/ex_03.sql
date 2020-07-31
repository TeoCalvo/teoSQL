-- Ex3. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria.
-- Considere apenas os objetos que tenham a descrição maior que 50.

select product_category_name,
            avg( product_name_lenght) as media_nome,
            max( product_name_lenght) as max_nome,
            min( product_name_lenght) as min_nome

from tb_products

where product_description_lenght > 50

group by product_category_name
