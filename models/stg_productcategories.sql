select
    productcategories.categoryname as categoryname,
    productcategories.productcategorykey as productcategorykey,
    productcategories._wayfare_created_at as _wayfare_created_at,
    productcategories._wayfare_updated_at as _wayfare_updated_at
from {{ source('wayfare', 'PRODUCTCATEGORIES') }} as productcategories
