{{ config(materialized='view') }}
select
    blns.blns_col as d,
    blns._wayfare_created_at
from {{ source('wayfare', 'blns_dataset') }} as blns
