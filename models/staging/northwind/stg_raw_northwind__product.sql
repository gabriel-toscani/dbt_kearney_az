with 

source as (

    select * from {{ source('raw_northwind', 'product') }}

),

renamed as (

    select
        id,
        productname,
        supplierid,
        categoryid,
        quantityperunit,
        unitprice,
        unitsinstock,
        unitsonorder,
        reorderlevel,
        discontinued,
        'test' as test

    from source

)

select * from renamed
