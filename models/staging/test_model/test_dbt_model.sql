
with

source_data as (

    select * from {{ source('test_source', 'seattle') }}

),

final as (
    select *
    , {{ var('current_timestamp') }} as batch_time
    from source_data limit 10
)

select * from final