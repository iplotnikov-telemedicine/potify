view: discount_product_ref {
  sql_table_name: potify_prod.discount_product_ref ;;

  dimension: discount_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.discount_id ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  measure: count {
    type: count
    drill_fields: [discount.id, discount.name, product.name, product.brand_product_id]
  }
}
