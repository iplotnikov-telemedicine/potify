view: global_product_review_effect {
  sql_table_name: potify_prod.global_product_review_effect ;;

  dimension: effect_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.effect_id ;;
  }

  dimension: global_product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.global_product_id ;;
  }

  measure: count {
    type: count
    drill_fields: [global_product.id, global_product.original_name, effect.id]
  }
}
