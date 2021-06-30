view: order_service_ref {
  sql_table_name: potify_prod.order_service_ref ;;

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order.id,
      order.billing_cardholder_first_name,
      order.billing_cardholder_last_name,
      service.id,
      service.name,
      service.internal_name
    ]
  }
}
