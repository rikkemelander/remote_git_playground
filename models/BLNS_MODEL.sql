{{ config(materialized='view') }}
select concat(blns.blns_col, 'dig') as blns_col
from {{ source('wayfare', 'blns_dataset') }} as blns
