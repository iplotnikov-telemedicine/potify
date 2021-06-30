view: effect {
  sql_table_name: potify_prod.effect ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, global_product_review_effect.count, product_effect.count]
  }
}
