{{ config(materialized='view') }}
select
    d.a,
    b._wayfare_created_at
from {{ ref('DUMMY_MODEL') }} as d
left join {{ ref('A_BLNS_MODEL') }} as b
    on d.b._wayfare_created_at = b.a
