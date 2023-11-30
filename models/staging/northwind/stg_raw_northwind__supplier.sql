with 

source as (

    select * from {{ source('raw_northwind', 'supplier') }}

),

renamed as (

    select
        id,
        companyname,
        contactname,
        contacttitle,
        address,
        city,
        region,
        postalcode,
        country,
        phone,
        fax,
        homepage

    from source

)

select * from renamed
