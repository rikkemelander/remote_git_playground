{{ config(materialized='view') }}
select * from {{ source('wayfare', 'sourcepg__source__productcategories') }}
