create or replace view
{{ source('wayfare_unmanaged', 'PRODUCTSUBCATEGORIES') }} (
    PRODUCTCATEGORYKEY,
    PRODUCTSUBCATEGORYKEY,
    SUBCATEGORYNAME,
    _WAYFARE_CREATED_AT,
    _WAYFARE_UPDATED_AT
) as (
    select
        PRODUCTSUBCATEGORIES.PRODUCTCATEGORYKEY as PRODUCTCATEGORYKEY,
        PRODUCTSUBCATEGORIES.PRODUCTSUBCATEGORYKEY as PRODUCTSUBCATEGORYKEY,
        PRODUCTSUBCATEGORIES.SUBCATEGORYNAME as SUBCATEGORYNAME,
        PRODUCTSUBCATEGORIES._WAYFARE_CREATED_AT as _WAYFARE_CREATED_AT,
        PRODUCTSUBCATEGORIES._WAYFARE_UPDATED_AT as _WAYFARE_UPDATED_AT
    from
        {{ source('wayfare_unmanaged', 'PRODUCTSUBCATEGORIES') }}
            as PRODUCTSUBCATEGORIES
);
