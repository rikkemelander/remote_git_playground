select * from {{ source('wayfare', 'dummy_source_dataset') }}
