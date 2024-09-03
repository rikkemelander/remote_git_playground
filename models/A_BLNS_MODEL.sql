{{ config(materialized='view') }}
select
    blns._wayfare_created_at as a,
    blns.blns_col | dum.a as c
from {{ source('wayfare', 'blns_dataset') }} as blns
left join {{ ref('DUMMY_MODEL') }} as dum
    on blns._wayfare_created_at = dum.b
