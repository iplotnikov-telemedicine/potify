view: brand_state {
  sql_table_name: potify_prod.brand_state ;;

  dimension: brand_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.brand_id ;;
  }

  dimension: state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  measure: count {
    type: count
    drill_fields: [brand.id, brand.name, state.id, state.name, state.fullname]
  }
}
