{{ config(materialized='view') }}
select
    d.a,
    concat(b.c, 'hej') as test
from {{ ref('DUMMY_MODEL') }} as d
left join {{ ref('A_BLNS_MODEL') }} as b
    on d.b = b.a
