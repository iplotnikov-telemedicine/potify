view: brand_product_state {
  sql_table_name: potify_prod.brand_product_state ;;

  dimension: brand_product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.brand_product_id ;;
  }

  dimension: state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  measure: count {
    type: count
    drill_fields: [brand_product.id, brand_product.name, state.id, state.name, state.fullname]
  }
}
