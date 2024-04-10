{{ config(materialized='view') }}
select c
from {{ ref('C_MODEL') }}
