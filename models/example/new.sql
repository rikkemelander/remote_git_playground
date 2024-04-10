{{ config(materialized='view') }}
select *
from {{ source('wayfare', 'productsubcategories') }}
