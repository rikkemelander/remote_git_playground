{{ config(materialized='view') }}
select blns.blns_col || ab.a as c
from {{ source('wayfare', 'blns_dataset') }} as blns
left join {{ ref('AB_MODEL') }} as ab
