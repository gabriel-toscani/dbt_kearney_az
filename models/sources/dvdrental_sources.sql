{{config(enabled=False)}}

{{ codegen.generate_source(schema_name = 'RAW_DVDRENTAL', database_name = 'NORTHWIND', table_names = [
"CITY"
, "CUSTOMER"
, "FILM_CATEGORY"
, "INVENTORY"
, "RENTAL"
, "ADDRESS"
, "CATEGORY"
, "PAYMENT"
, "ACTOR"
, "COUNTRY"
, "FILM"
, "FILM_ACTOR"
, "STORE"
, "STAFF"], generate_columns = True) }}