with 
    staging as (
        select *
        from {{ref('stg_raw_northwind__customer')}}
    )

select 
    {{ dbt_utils.generate_surrogate_key(['id']) }} as customer_sk
    , *
from staging