
with

source_data as (

    select * from {{ source('test_source', 'test') }}

),

final as (
    select id
    , growth_rate
    , population_density
    , popu_1_ation_growth_rate
    , "YEAR"

    from source_data
)

select * from final