{{ config(materialized='view') }}
select c
from {{ ref('BLNS_MODEL') }}
