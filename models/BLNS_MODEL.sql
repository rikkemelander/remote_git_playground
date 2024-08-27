{{ config(materialized='view') }}
select
    blns.blns_col,
    blns._wayfare_created_at
from {{ source('wayfare', 'blns_dataset') }} as blns
