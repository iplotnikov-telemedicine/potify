view: service_symptom_category_ref {
  sql_table_name: potify_prod.service_symptom_category_ref ;;

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  dimension: symptomcategory_id {
    type: number
    sql: ${TABLE}.symptomcategory_id ;;
  }

  measure: count {
    type: count
    drill_fields: [service.id, service.name, service.internal_name]
  }
}
