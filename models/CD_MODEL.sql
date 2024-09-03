{{ config(materialized='view') }}
select concat(blns.a, 'kaj') as a
from {{ ref('A_BLNS_MODEL') }} as blns
