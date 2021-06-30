view: shop_cart {
  sql_table_name: potify_prod.shop_cart ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: asap_delivery {
    type: yesno
    sql: ${TABLE}.asap_delivery ;;
  }

  dimension: calculated_on_indica {
    type: yesno
    sql: ${TABLE}.calculated_on_indica ;;
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
    sql: ${TABLE}.createdAt ;;
  }

  dimension: credit_amount {
    type: number
    sql: ${TABLE}.credit_amount ;;
  }

  dimension: csz_id {
    type: number
    sql: ${TABLE}.csz_id ;;
  }

  dimension: delivery_address_id {
    type: number
    sql: ${TABLE}.delivery_address_id ;;
  }

  dimension: delivery_amount {
    type: number
    sql: ${TABLE}.delivery_amount ;;
  }

  dimension: delivery_method {
    type: string
    sql: ${TABLE}.delivery_method ;;
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

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.order_number ;;
  }

  dimension: order_type {
    type: number
    sql: ${TABLE}.order_type ;;
  }

  dimension: patient_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_id ;;
  }

  dimension: payment_method {
    type: number
    sql: ${TABLE}.payment_method ;;
  }

  dimension_group: preferred_datetime {
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
    sql: ${TABLE}.preferred_datetime ;;
  }

  dimension: shipping_method_free_after {
    type: number
    sql: ${TABLE}.shipping_method_free_after ;;
  }

  dimension: shipping_method_id {
    type: number
    sql: ${TABLE}.shipping_method_id ;;
  }

  dimension: shipping_method_price {
    type: number
    sql: ${TABLE}.shipping_method_price ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.subtotal ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
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
    sql: ${TABLE}.updatedAt ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      patient.first_name,
      patient.last_name,
      patient.middle_name,
      patient.current_recommendation_doctor_name,
      patient.nickname,
      patient.merged_to_patient_id,
      discount.id,
      discount.name,
      shop_cart_item.count
    ]
  }
}
