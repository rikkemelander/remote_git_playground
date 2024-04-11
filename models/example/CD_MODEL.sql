{{ config(materialized='view') }}
select
    c,
    a || c as d
from {{ ref('BLNS_MODEL') }}
