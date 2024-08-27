{{ config(materialized='view') }}
select blns.a
from {{ ref('A_BLNS_MODEL') }} as blns
