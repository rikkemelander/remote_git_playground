{{ config(materialized='view') }}
select blns.f as a
from {{ ref('A_BLNS_MODEL') }} as blns
