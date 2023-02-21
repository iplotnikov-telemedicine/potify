view: product {
  sql_table_name: potify_prod.product ;;
  drill_fields: [brand_product_id]

  dimension: brand_product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.brand_product_id ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: cover_id {
    type: number
    sql: ${TABLE}.cover_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: global_product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.global_product_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_city_local_tax_exempt {
    type: yesno
    sql: ${TABLE}.is_city_local_tax_exempt ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_excise {
    type: yesno
    sql: ${TABLE}.is_excise ;;
  }

  dimension: is_free_shipping {
    type: yesno
    sql: ${TABLE}.is_free_shipping ;;
  }

  dimension: is_tax_exempt {
    type: yesno
    sql: ${TABLE}.is_tax_exempt ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: original_id {
    type: number
    sql: ${TABLE}.original_id ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: small_cover_id {
    type: number
    sql: ${TABLE}.small_cover_id ;;
  }

  dimension: strain {
    type: number
    sql: ${TABLE}.strain ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}.symbol ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  dimension: wholesale_price {
    type: number
    sql: ${TABLE}.wholesale_price ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: product_list {
    type: list
    list_field: name
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      brand_product_id,
      name,
      global_product.id,
      global_product.original_name,
      discount_product_ref.count,
      lab_result.count,
      product_filter_index.count,
      product_position.count,
      shop_cart_item.count,
      shop_order_item.count,
      similar_product.count
    ]
  }
}
