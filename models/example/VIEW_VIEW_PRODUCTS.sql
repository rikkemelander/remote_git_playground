{{ config(materialized='view') }}
select * from {{ ref('VIEW_PRODUCTS') }}
