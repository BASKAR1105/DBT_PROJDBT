with CTE as (
    select modifieddate 
    from
    {{ source('proj_dbt', 'transactions') }}
)
select * from CTE