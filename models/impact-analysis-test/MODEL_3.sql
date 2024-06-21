{{ config(materialized='view') }}
select
    blns.blns_col as c,
    dum.a as a
from {{ source('wayfare', 'blns_dataset') }} as blns
left join {{ ref('MODEL_2') }} as dum
    on blns._wayfare_created_at = dum.b
