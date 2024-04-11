{{ config(materialized='view') }}
select
    blns.a,
    blns.c
from {{ ref('BLNS_MODEL') }} as blns
