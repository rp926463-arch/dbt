{% test is_aid_response_given(model, column_name) %}

with validation as (

    select
        {{ column_name }} as response_given

    from {{ source('test_source', 'seattle') }}

),

validation_errors as (

    select
        response_given

    from validation
    -- if this is true, then even_field is actually odd!
    where response_given = 'NA'

)

select *
from validation_errors

{% endtest %}