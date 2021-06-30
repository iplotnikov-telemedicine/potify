view: shop_order_item {
  sql_table_name: potify_prod.shop_order_item ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.discount_id ;;
  }

  dimension: is_tax_exempt {
    type: yesno
    sql: ${TABLE}.is_tax_exempt ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: shop_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shop_order_id ;;
  }

  dimension: special {
    type: yesno
    sql: ${TABLE}.special ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      product_name,
      shop_order.id,
      shop_order.city_name,
      shop_order.county_name,
      shop_order.state_name,
      product.name,
      product.brand_product_id,
      discount.id,
      discount.name
    ]
  }
}
