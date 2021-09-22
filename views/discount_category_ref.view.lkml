view: discount_category_ref {
  sql_table_name: potify_prod.discount_category_ref ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: discount_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.discount_id ;;
  }

  measure: count {
    type: count
    drill_fields: [discount.id, discount.name, discount.display_name]
  }
}
