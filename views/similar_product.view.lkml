view: similar_product {
  sql_table_name: potify_prod.similar_product ;;
  drill_fields: [similar_product_id]

  dimension: similar_product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.similar_product_id ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  measure: count {
    type: count
    drill_fields: [similar_product_id, product.name, product.brand_product_id]
  }
}
