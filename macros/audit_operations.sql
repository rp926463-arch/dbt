{% macro insert_audits(model_name, action_name) -%}

    insert into pipeline_logs.dbt_custom_logs.dbt_audits (model_name, audit_type)

    values ('{{ model_name }}', '{{ action_name }}')

{%- endmacro %}