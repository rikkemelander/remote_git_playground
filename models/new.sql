select
    test.a,
    test.c,
    hej.a as sjov,
    hej.test
from {{ ref('a_blns_model') }} as test
left join {{ ref('b_model') }} as hej
