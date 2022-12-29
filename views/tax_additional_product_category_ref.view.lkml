view: tax_additional_product_category_ref {
  sql_table_name: potify_prod.tax_additional_product_category_ref ;;

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.product_category_id ;;
  }

  dimension: tax_additional_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_additional_id ;;
  }

  measure: count {
    type: count
    drill_fields: [tax_additional.id, tax_additional.name]
  }
}
