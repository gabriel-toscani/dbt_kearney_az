with 
    staging as (
        select *
        from {{ref('stg_raw_northwind__supplier')}}
    )

select 
    {{ dbt_utils.generate_surrogate_key(['id']) }} as supplier_sk
    , *
from staging