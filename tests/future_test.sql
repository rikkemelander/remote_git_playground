SELECT *
FROM {{ ref('dummy_model') }}
WHERE b > CURRENT_TIMESTAMP
