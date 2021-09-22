view: global_product_section {
  sql_table_name: potify_prod.global_product_section ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.sort ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
