{{ config(materialized='view') }}
select * from {{ source('wayfare', 'SOURCEPG__source_productcategories') }}
