connection: "thelook"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
datagroup: sales_update_production1 {
  #max_cache_age: "24 hours"
  sql_trigger: SELECT max(id) FROM users  ;;

}
persist_with: sales_update_production1
