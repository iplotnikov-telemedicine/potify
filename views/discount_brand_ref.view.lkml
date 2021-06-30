view: discount_brand_ref {
  sql_table_name: potify_prod.discount_brand_ref ;;

  dimension: brand_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.brand_id ;;
  }

  dimension: discount_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.discount_id ;;
  }

  measure: count {
    type: count
    drill_fields: [discount.id, discount.name, brand.id, brand.name]
  }
}
