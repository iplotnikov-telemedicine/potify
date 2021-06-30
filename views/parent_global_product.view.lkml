view: parent_global_product {
  sql_table_name: potify_prod.parent_global_product ;;
  drill_fields: [parent_global_product_id]

  dimension: parent_global_product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.parent_global_product_id ;;
  }

  dimension: global_product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.global_product_id ;;
  }

  measure: count {
    type: count
    drill_fields: [parent_global_product_id, global_product.id, global_product.original_name]
  }
}
