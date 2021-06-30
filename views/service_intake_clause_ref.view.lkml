view: service_intake_clause_ref {
  sql_table_name: potify_prod.service_intake_clause_ref ;;

  dimension: intakeclause_id {
    type: number
    sql: ${TABLE}.intakeclause_id ;;
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
