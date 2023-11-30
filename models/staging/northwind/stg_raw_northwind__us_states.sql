with 

source as (

    select * from {{ source('raw_northwind', 'us_states') }}

),

renamed as (

    select
        state_id,
        state_name,
        state_abbr,
        state_region

    from source

)

select * from renamed
