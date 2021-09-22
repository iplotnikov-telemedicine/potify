view: promo_code_service_ref {
  sql_table_name: potify_prod.promo_code_service_ref ;;

  dimension: promo_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.promo_code_id ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  measure: count {
    type: count
    drill_fields: [promo_code.id, promo_code.name, service.id, service.name, service.internal_name]
  }
}
