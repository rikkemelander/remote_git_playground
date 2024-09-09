{{ config(materialized='view') }}
select
    concat(d.a, 'md') as a,
    concat(b.c, 'hej') as test
from {{ ref('DUMMY_MODEL') }} as d
left join {{ ref('A_BLNS_MODEL') }} as b
    on d.b = b.a
