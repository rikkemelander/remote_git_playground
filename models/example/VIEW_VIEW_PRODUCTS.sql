{{ config(materialized='view') }}
select *
from {{ ref('a') }}
