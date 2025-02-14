{{ config(materialized='view') }}
select
    blns._wayfare_created_at as a,
    blns.blns_col as c
from {{ source('wayfare', 'blns_dataset') }} as blns
left join {{ ref('dummy_model') }} as dum
    on blns._wayfare_created_at = dum.b
