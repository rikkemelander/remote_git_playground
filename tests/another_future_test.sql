SELECT *
FROM {{ ref('DUMMY_MODEL') }}
WHERE b > CURRENT_TIMESTAMP
