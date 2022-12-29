view: flavor {
  sql_table_name: potify_prod.flavor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, global_product_review_flavor.count, product_flavor.count]
  }
}
