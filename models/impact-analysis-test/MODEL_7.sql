{{ config(materialized='view') }}
select
    dum.c,
    dum.a || dum.b as d
from {{ ref('MODEL_2') }} as dum
