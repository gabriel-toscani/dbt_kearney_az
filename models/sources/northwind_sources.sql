{{config(enabled=False)}}

{{ codegen.generate_source(schema_name = 'RAW_NORTHWIND', database_name = 'NORTHWIND', table_names = [
"ORDERDETAIL"
, "CUSTOMER"
, "TERRITORY"
, "REGION"
, "US_STATES"
, "_ORDER_"
, "CATEGORY"
, "EMPLOYEE"
, "PRODUCT"
, "EMPLOYEETERRITORY"
, "SUPPLIER"
, "SHIPPER"], generate_columns = True) }}