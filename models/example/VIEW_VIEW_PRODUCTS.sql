{{ config(materialized='view') }}

select STAGING__PRODUCTCATEGORYKEY from {{ ref('VIEW_PRODUCTS') }}
