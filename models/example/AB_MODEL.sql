select
    d.a as b,
    d.a || blns.c as a
from {{ ref('DUMMY_MODEL') }} as d
left join {{ ref('BLNS_MODEL') }} as blns
