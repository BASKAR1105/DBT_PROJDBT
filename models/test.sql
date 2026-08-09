select 
* from {{ source('PROJ_DBT', 'TRANSACTIONS') }}

limit 20