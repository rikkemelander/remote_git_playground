{{ config(materialized='view') }}
select *
from {{ source('wayfare', 'A__SOURCE__PRODUCTCATEGORIES') }}
