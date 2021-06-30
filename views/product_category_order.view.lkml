view: product_category_order {
  sql_table_name: potify_prod.product_category_order ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  dimension: order_weight {
    type: number
    sql: ${TABLE}.order_weight ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
