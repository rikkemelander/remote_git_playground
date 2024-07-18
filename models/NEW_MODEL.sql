select
    a.total_cost,
    a.modelname
from {{ ref('AGGREGATES') }} as a
