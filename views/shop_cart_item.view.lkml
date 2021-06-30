view: shop_cart_item {
  sql_table_name: potify_prod.shop_cart_item ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: added {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.added_at ;;
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

  dimension: position_id {
    type: number
    sql: ${TABLE}.position_id ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_without_tax {
    type: number
    sql: ${TABLE}.price_without_tax ;;
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

  dimension: shop_cart_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shop_cart_id ;;
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
      shop_cart.id,
      product.name,
      product.brand_product_id,
      discount.id,
      discount.name
    ]
  }
}
