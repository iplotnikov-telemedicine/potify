view: service_service_ref {
  sql_table_name: potify_prod.service_service_ref ;;

  dimension: parent_service_id {
    type: number
    sql: ${TABLE}.parent_service_id ;;
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
