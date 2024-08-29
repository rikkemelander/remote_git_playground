{{ config(materialized='view') }}
select
    blns._wayfare_created_at as a,
    concat(blns.blns_col, 'hej med dig') as c
from {{ source('wayfare', 'blns_dataset') }} as blns
left join {{ ref('DUMMY_MODEL') }} as dum
    on blns._wayfare_created_at = dum.b
