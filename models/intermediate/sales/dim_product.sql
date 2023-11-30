with 
    staging as (
        select *
        from {{ref('stg_raw_northwind__product')}}
    )

select 
    {{ dbt_utils.generate_surrogate_key(['id']) }} as product_sk
    , *
from staging