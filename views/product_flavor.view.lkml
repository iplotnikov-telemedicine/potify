view: product_flavor {
  sql_table_name: potify_prod.product_flavor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: flavor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.flavor_id ;;
  }

  dimension: global_product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.global_product_id ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, global_product.id, global_product.original_name, flavor.id]
  }
}
