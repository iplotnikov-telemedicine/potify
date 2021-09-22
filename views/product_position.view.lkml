view: product_position {
  sql_table_name: potify_prod.product_position ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: global_product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.global_product_id ;;
  }

  dimension: indica_price {
    type: number
    sql: ${TABLE}.indica_price ;;
  }

  dimension: is_special {
    type: yesno
    sql: ${TABLE}.is_special ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_key {
    type: string
    sql: ${TABLE}.price_key ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: range_from {
    type: number
    sql: ${TABLE}.range_from ;;
  }

  dimension: special_price {
    type: number
    sql: ${TABLE}.special_price ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  dimension: use_mj_taxes {
    type: yesno
    sql: ${TABLE}.use_mj_taxes ;;
  }

  measure: count {
    type: count
    drill_fields: [id, product.name, product.brand_product_id, global_product.id, global_product.original_name]
  }
}
