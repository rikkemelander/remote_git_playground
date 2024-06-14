{{ config(materialized='view') }}
select blns.blns_col as d
from {{ source('wayfare', 'blns_dataset') }} as blns
