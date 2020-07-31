-- Ex1. Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria

select product_category_name,
            avg( product_description_lenght) as media_descricao,
            max( product_description_lenght ) as max_descricao,
            min( product_description_lenght ) as min_descricao

from tb_products

group by product_category_name
