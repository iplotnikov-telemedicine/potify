view: global_product_group_ref {
  sql_table_name: potify_prod.global_product_group_ref ;;

  dimension: global_product_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.global_product_group_id ;;
  }

  dimension: global_product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.global_product_id ;;
  }

  measure: count {
    type: count
    drill_fields: [global_product_group.id, global_product_group.original_name, global_product.id, global_product.original_name]
  }
}
