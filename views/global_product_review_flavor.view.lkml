view: global_product_review_flavor {
  sql_table_name: potify_prod.global_product_review_flavor ;;

  dimension: flavor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.flavor_id ;;
  }

  dimension: global_product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.global_product_id ;;
  }

  measure: count {
    type: count
    drill_fields: [global_product.id, global_product.original_name, flavor.id]
  }
}
