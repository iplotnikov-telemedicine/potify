view: service_package {
  sql_table_name: potify_prod.service_package ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: internal_name {
    type: string
    sql: ${TABLE}.internal_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      internal_name,
      appointment_service_package_ref.count,
      mb_office.count,
      order_item.count,
      order_service_package_ref.count,
      service_package_item.count
    ]
  }
}
