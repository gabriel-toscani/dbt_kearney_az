{{ config(error_if = '>50') }}

with 
    revenue_by_order as (
        select 
            orderid
            , sum(UNITPRICE * QUANTITY) as revenue
        from {{ref('stg_raw_northwind__orderdetail')}}
        group by orderid
    )

select *
from revenue_by_order
where revenue < 100