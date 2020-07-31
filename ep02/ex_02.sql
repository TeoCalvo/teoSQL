-- Ex2. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria

select product_category_name,
            avg( product_name_lenght) as media_nome,
            max( product_name_lenght) as max_nome,
            min( product_name_lenght) as min_nome

from tb_products

group by product_category_name
