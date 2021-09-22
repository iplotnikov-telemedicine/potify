view: brand_product_property_ref {
  sql_table_name: potify_prod.brand_product_property_ref ;;

  dimension: brand_product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.brand_product_id ;;
  }

  dimension: brand_product_property_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.brand_product_property_id ;;
  }

  measure: count {
    type: count
    drill_fields: [brand_product.id, brand_product.name, brand_product_property.id]
  }
}
