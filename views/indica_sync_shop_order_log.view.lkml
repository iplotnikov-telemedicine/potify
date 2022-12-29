view: indica_sync_shop_order_log {
  sql_table_name: potify_prod.indica_sync_shop_order_log ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension: field {
    type: string
    sql: ${TABLE}.field ;;
  }

  dimension: from_data {
    type: string
    sql: ${TABLE}.fromData ;;
  }

  dimension: shop_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shop_order_id ;;
  }

  dimension: to_data {
    type: string
    sql: ${TABLE}.toData ;;
  }

  measure: count {
    type: count
    drill_fields: [id, shop_order.id, shop_order.city_name, shop_order.county_name, shop_order.state_name]
  }
}
