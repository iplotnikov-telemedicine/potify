view: order_number {
  sql_table_name: potify_prod.order_number ;;

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
