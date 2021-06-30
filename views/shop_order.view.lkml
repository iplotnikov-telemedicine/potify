view: shop_order {
  sql_table_name: potify_prod.shop_order ;;
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

  dimension_group: change_status_datetime {
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
    sql: ${TABLE}.change_status_datetime ;;
  }

  dimension: city_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.city_id ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension: county_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.county_id ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: credit_amount {
    type: number
    sql: ${TABLE}.credit_amount ;;
  }

  dimension: csz_id {
    type: number
    sql: ${TABLE}.csz_id ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
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

  dimension: earned_potify_cashback {
    type: number
    sql: ${TABLE}.earned_potify_cashback ;;
  }

  dimension: is_expired {
    type: yesno
    sql: ${TABLE}.is_expired ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
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
    type: string
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

  dimension: state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: step {
    type: number
    sql: ${TABLE}.step ;;
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

  dimension: zip_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.zip_id ;;
  }

  dimension: zip_number {
    type: string
    sql: ${TABLE}.zip_number ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      city_name,
      county_name,
      state_name,
      patient.first_name,
      patient.last_name,
      patient.middle_name,
      patient.current_recommendation_doctor_name,
      patient.nickname,
      patient.merged_to_patient_id,
      city.id,
      city.name,
      city.full_name,
      county.id,
      county.name,
      state.id,
      state.name,
      state.fullname,
      zip.id,
      zip.name,
      discount.id,
      discount.name,
      promo_balance_log.count,
      shop_order_item.count
    ]
  }
}
