view: service_package_item {
  sql_table_name: potify_prod.service_package_item ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  dimension: service_package_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_package_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      service_package.id,
      service_package.name,
      service_package.internal_name,
      service.id,
      service.name,
      service.internal_name,
      order_item.count
    ]
  }
}
