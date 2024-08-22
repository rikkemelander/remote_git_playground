SELECT *
FROM {{ ref('my_model') }}
WHERE b > CURRENT_TIMESTAMP
