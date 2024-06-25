select
    productsubcategories.productcategorykey as productcategorykey,
    productsubcategories.productsubcategorykey as productsubcategorykey,
    productsubcategories.subcategoryname as subcategoryname,
    productsubcategories._wayfare_created_at as _wayfare_created_at,
    productsubcategories._wayfare_updated_at | 'TEST' as _wayfare_updated_at
from {{ source('wayfare', 'PRODUCTSUBCATEGORIES') }} as productsubcategories
