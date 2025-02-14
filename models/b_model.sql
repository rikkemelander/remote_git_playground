{{ config(materialized='view') }}
select
    b.c as test,
    d.a as a
from {{ ref('dummy_model') }} as d
left join {{ ref('a_blns_model') }} as b
    on d.b = b.a
