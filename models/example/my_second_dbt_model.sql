{{ config(materialized='table') }}
select * from {{ source('wayfare', 'staging__source_productcategories') }}
