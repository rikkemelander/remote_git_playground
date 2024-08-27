{{ config(materialized='view') }}
select
    blns.blns_col as c,
    blns._wayfare_created_at as a
from {{ source('wayfare', 'blns_dataset') }} as blns
left join {{ ref('DUMMY_MODEL') }} as dum
    on blns._wayfare_created_at = dum.b
