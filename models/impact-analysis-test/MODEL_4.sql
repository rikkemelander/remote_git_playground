{{ config(materialized='view') }}
select
    blns.a,
    blns.c
from {{ ref('MODEL_3') }} as blns
