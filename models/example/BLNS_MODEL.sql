{{ config(materialized='view') }}
select
    dum.a,
    blns.blns_col as c
from {{ source('wayfare', 'blns_dataset') }} as blns
left join {{ ref('DUMMY_MODEL') }} as dum
    on blns._wayfare_created_at = dum.b
