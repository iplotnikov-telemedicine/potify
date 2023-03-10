view: discount {
  sql_table_name: potify_prod.discount ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: apply_type {
    type: string
    sql: ${TABLE}.apply_type ;;
  }

  dimension: bogo_buy {
    type: number
    sql: ${TABLE}.bogo_buy ;;
  }

  dimension: bogo_get {
    type: number
    sql: ${TABLE}.bogo_get ;;
  }

  dimension: bogo_multiple {
    type: yesno
    sql: ${TABLE}.bogo_multiple ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: deleted {
    type: number
    sql: ${TABLE}.deleted ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }

  dimension: happy_weekdays {
    type: string
    sql: ${TABLE}.happy_weekdays ;;
  }

  dimension: image_id {
    type: number
    sql: ${TABLE}.image_id ;;
  }

  dimension: is_exclude_items_on_special {
    type: yesno
    sql: ${TABLE}.is_exclude_items_on_special ;;
  }

  dimension: is_individual_use_only {
    type: yesno
    sql: ${TABLE}.is_individual_use_only ;;
  }

  dimension: is_once_per_patient {
    type: yesno
    sql: ${TABLE}.is_once_per_patient ;;
  }

  dimension: is_ongoing {
    type: yesno
    sql: ${TABLE}.is_ongoing ;;
  }

  dimension: is_show_name_on_tile {
    type: yesno
    sql: ${TABLE}.is_show_name_on_tile ;;
  }

  dimension: max_subtotal_price {
    type: number
    sql: ${TABLE}.max_subtotal_price ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  dimension: min_subtotal_price {
    type: number
    sql: ${TABLE}.min_subtotal_price ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: original_id {
    type: number
    sql: ${TABLE}.original_id ;;
  }

  dimension: product_filter_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_filter_id ;;
  }

  dimension: promo_code {
    type: string
    sql: ${TABLE}.promo_code ;;
  }

  dimension: show_promo_code {
    type: yesno
    sql: ${TABLE}.show_promo_code ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: use_type {
    type: string
    sql: ${TABLE}.use_type ;;
  }

  dimension: used_count {
    type: number
    sql: ${TABLE}.used_count ;;
  }

  dimension: uses_count {
    type: number
    sql: ${TABLE}.uses_count ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      display_name,
      product_filter.id,
      product_filter.name,
      discount_brand_ref.count,
      discount_category_ref.count,
      discount_collection_group.count,
      discount_happy_hour.count,
      discount_medibook_office_ref.count,
      discount_patient_group_ref.count,
      discount_patient_type_ref.count,
      discount_product_ref.count,
      shop_cart.count,
      shop_cart_item.count,
      shop_order.count,
      shop_order_item.count
    ]
  }
}
