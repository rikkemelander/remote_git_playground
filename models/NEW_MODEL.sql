select
    a.total_cost,
    a.categoryname
from {{ ref('AGGREGATES') }} as a
