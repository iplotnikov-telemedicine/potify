view: service_diagnosed_condition_ref {
  sql_table_name: potify_prod.service_diagnosed_condition_ref ;;

  dimension: diagnosedcondition_id {
    type: number
    sql: ${TABLE}.diagnosedcondition_id ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  measure: count {
    type: count
    drill_fields: [service.id, service.name, service.internal_name]
  }
}
