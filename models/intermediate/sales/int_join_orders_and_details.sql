with
    orders as (
        select *
        from {{ref('stg_raw_northwind___order_')}}
    )

    , order_details as (
        select *
        from {{ref('stg_raw_northwind__orderdetail')}}
    )

    select 
        orders.*
        , order_details.PRODUCTID
        , UNITPRICE
        , QUANTITY
        , DISCOUNT
    from orders
    left join order_details on orders.id = order_details.orderid