SELECT *,
        case when product_category_name isnull then 'esse caraio é nulo' else product_category_name  end as categoria_nova,
        coalesce( product_category_name,   'esse caraio é nulo' ) as categoria_nova
FROM tb_products
;