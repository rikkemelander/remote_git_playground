{{ config(materialized='view') }}
select
    d.b,
    d.a
from {{ ref('MODEL_2') }} as d
