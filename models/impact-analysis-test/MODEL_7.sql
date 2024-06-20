{{ config(materialized='view') }}
select dum.a || dum.b
from {{ ref('MODEL_2') }} as dum
