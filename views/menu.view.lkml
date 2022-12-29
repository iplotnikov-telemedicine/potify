view: menu {
  sql_table_name: potify_prod.menu ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: internal_name {
    type: string
    sql: ${TABLE}.internal_name ;;
  }

  dimension: is_system {
    type: string
    sql: ${TABLE}.is_system ;;
  }

  dimension: json {
    type: string
    sql: ${TABLE}.json ;;
  }

  dimension: service_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_category_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: xml {
    type: string
    sql: ${TABLE}.xml ;;
  }

  measure: count {
    type: count
    drill_fields: [id, internal_name, service_category.id, service_category.name, service_category.internal_name]
  }
}
