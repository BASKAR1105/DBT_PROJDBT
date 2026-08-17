with CTE as (
    select 
    TO_TIMESTAMP(modifieddate) AS modifieddate,
    DATE(TO_TIMESTAMP(modifieddate)) AS DATE_modifieddate,
    HOUR(TO_TIMESTAMP(modifieddate)) AS HOUR_modifieddate,
    DAYNAME(TO_TIMESTAMP(modifieddate)) AS DAY_modifieddate,
    MONTHNAME(TO_TIMESTAMP(modifieddate)) AS MONTH_modifieddate,
    YEAR(TO_TIMESTAMP(modifieddate)) AS YEAR_modifieddate
    from
    {{ source('PROJ_DBT', 'TRANSACTIONS') }}
)
select * from CTE


