{{ config(materialized='view') }}
select blns.blns_col as a
from {{ source('wayfare', 'blns_dataset') }} as blns
