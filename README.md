Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

Useful commands for 1st time in your project 
* dbt parse
* dbt deps
* create database pipeline_logs in your warehouse 
  _ dbt run -s elementary --target dev
  _ dbt run --select dbt_artifacts
* Override variables from command line
  _ dbt build -m test_dbt_model --vars "{current_timestamp:current_date()}"
  
* [docs block](https://docs.getdbt.com/docs/build/documentation)

* Command to chech [source freshness](https://docs.getdbt.com/reference/resource-properties/freshness) (refer to file models/staging/test_model/_sources.yml)
  _ dbt source snapshot-freshness
  
* [Query tags](https://docs.getdbt.com/reference/resource-configs/snowflake-configs)

* DBT state command
  _ dbt ls --models state:modified --state .
  _ dbt run --models state:modified --state .
  
* [DBT Multi repo approach](https://docs.getdbt.com/docs/build/packages#how-do-i-add-a-package-to-my-project)
