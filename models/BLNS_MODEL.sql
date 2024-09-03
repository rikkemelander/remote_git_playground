{{ config(materialized='view') }}
select blns.blns_col
from {{ source('wayfare', 'blns_dataset') }} as blns
