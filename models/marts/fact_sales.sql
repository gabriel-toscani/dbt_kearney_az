with 
    orders_detailed as (
        select *
        from {{ref('int_join_orders_and_details')}}
    )

    , customers as (
        select *
        from {{ref('dim_customer')}}
    )

    , products as (
        select *
        from {{ref('dim_product')}}
    )

    select 
        companyname
        , productname
        , sum(orders_detailed.unitprice * quantity) as revenue
    from orders_detailed
    left join customers on orders_detailed.customerid = customers.id
    left join products on orders_detailed.productid = products.id
    group by companyname, productname