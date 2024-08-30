{{ config(materialized='view') }}
select concat(blns.blns_col, 'hest')
from {{ source('wayfare', 'blns_dataset') }} as blns
