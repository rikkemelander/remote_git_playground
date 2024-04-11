{{ config(materialized='view') }}
select
    a,
    c
from {{ ref('BLNS_MODEL') }}
