SELECT *

FROM (

    SELECT *,
    -- isso é um caraio de uma window function
        ROW_NUMBER() OVER (PARTITION BY seller_id order by dt_venda desc) as numero_linha,
        LEAD(dt_venda) OVER (PARTITION BY seller_id order by dt_venda desc) as lag_data,
        LEAD(dt_venda,2) OVER (PARTITION BY seller_id order by dt_venda desc) as lag_data2
    FROM TB_SELLER_ORDER

)
WHERE numero_linha = 1