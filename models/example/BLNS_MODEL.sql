{{ config(materialized='view') }}
select blns.blns_col as c
from {{ source('wayfare', 'blns_dataset') }} as blns
