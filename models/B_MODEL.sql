{{ config(materialized='view') }}
select
    d.a,
    b.c as test
from {{ ref('DUMMY_MODEL') }} as d
left join {{ ref('A_BLNS_MODEL') }} as b
    on d.b = b.a
