{{ config(materialized='view') }}
select
    blns._wayfare_created_at as a,
    concat(blns.blns_col, 'hej') as c
from {{ source('wayfaree', 'blns_dataset') }} as blns
left join {{ ref('DUMMY_MODEL') }} as dum
    on blns._wayfare_created_at = dum.b
