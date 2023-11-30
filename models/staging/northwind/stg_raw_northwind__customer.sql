{{config(materialized='table')}}

with 

source as (

    select * from {{ source('raw_northwind', 'customer') }}

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
        fax

    from source

)

select * from renamed
