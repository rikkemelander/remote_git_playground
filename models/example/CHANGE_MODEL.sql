select
    test.a,
    test.c
from {{ ref('A_BLNS_MODEL') }} as test
