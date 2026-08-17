with CTE as (
    select modifieddate 
    from
    {{ source('PROJ_BASS', 'TRANSACTIONS') }}
)
select * from CTE


