select * from {{ source('wayfare', 'staging__source_productcategories') }}
