select
    PRODUCTCATEGORIES.PRODUCTCATEGORYKEY as PRODUCTCATEGORYKEY,
    PRODUCTCATEGORIES._WAYFARE_CREATED_AT as _WAYFARE_CREATED_AT,
    PRODUCTCATEGORIES._WAYFARE_UPDATED_AT as _WAYFARE_UPDATED_AT,
    PRODUCTCATEGORIES.CATEGORYNAME as CATEGORYNAME
from DEMO.PUBLIC.PRODUCTCATEGORIES as PRODUCTCATEGORIES
