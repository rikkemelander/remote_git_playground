{{ config(materialized='view') }}
select *
from {{ source('wayfare', 'SOURCEPG__SOURCE__PRODUCTCATEGORIES') }}
