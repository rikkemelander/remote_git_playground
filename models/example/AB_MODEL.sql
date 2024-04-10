select
    d.a as b,
    d.a || d.b as a
from {{ ref('DUMMY_MODEL') }} as d
