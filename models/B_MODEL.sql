{{ config(materialized='view') }}
select
    b.c as test,
    concat(d.a, 'md') as a
from {{ ref('DUMMY_MODEL') }} as d
left join {{ ref('A_BLNS_MODEL') }} as b
    on d.b = b.a
