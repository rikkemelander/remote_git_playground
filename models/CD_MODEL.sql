{{ config(materialized='view') }}
select
    blns.a,
    blns.c
from {{ ref('A_BLNS_MODEL') }} as blns
