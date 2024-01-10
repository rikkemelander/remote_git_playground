{{ config(materialized='view') }}

select STAGING__PRODUCTCATEGORYKEY from {{ ref('my_second_dbt_model') }}
