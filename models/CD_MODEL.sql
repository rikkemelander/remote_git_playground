{{ config(materialized='view') }}
select blns.a as a
from {{ ref('A_BLNS_MODEL') }} as blns
