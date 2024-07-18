select
    a.total_cost as some_name,
    a.modelname as another_name
from {{ ref('AGGREGATES') }} as a
