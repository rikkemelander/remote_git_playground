{{ config(materialized='view') }}
select blns_col as c
from {{ source('wayfare', 'blns_dataset') }}
union
select a as c from {{ ref('AB_MODEL') }}
