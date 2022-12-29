view: order {
  sql_table_name: potify_prod.`order` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: appointment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appointment_id ;;
  }

  dimension: authorize_net_address_id {
    type: number
    sql: ${TABLE}.authorize_net_address_id ;;
  }

  dimension: authorize_net_amount {
    type: number
    sql: ${TABLE}.authorize_net_amount ;;
  }

  dimension: billing_address1 {
    type: string
    sql: ${TABLE}.billing_address1 ;;
  }

  dimension: billing_address2 {
    type: string
    sql: ${TABLE}.billing_address2 ;;
  }

  dimension: billing_address_id {
    type: number
    sql: ${TABLE}.billing_address_id ;;
  }

  dimension: billing_authorize_net_payment_profile_id {
    type: number
    sql: ${TABLE}.billing_authorize_net_payment_profile_id ;;
  }

  dimension: billing_card_code {
    type: string
    sql: ${TABLE}.billing_card_code ;;
  }

  dimension: billing_card_number {
    type: string
    sql: ${TABLE}.billing_card_number ;;
  }

  dimension: billing_card_type {
    type: string
    sql: ${TABLE}.billing_card_type ;;
  }

  dimension: billing_cardholder_first_name {
    type: string
    sql: ${TABLE}.billing_cardholder_first_name ;;
  }

  dimension: billing_cardholder_last_name {
    type: string
    sql: ${TABLE}.billing_cardholder_last_name ;;
  }

  dimension: billing_city_id {
    type: number
    sql: ${TABLE}.billing_city_id ;;
  }

  dimension: billing_county_id {
    type: number
    sql: ${TABLE}.billing_county_id ;;
  }

  dimension: billing_csz_id {
    type: number
    sql: ${TABLE}.billing_csz_id ;;
  }

  dimension: billing_expiration_date {
    type: string
    sql: ${TABLE}.billing_expiration_date ;;
  }

  dimension: billing_lat {
    type: number
    sql: ${TABLE}.billing_lat ;;
  }

  dimension: billing_lon {
    type: number
    sql: ${TABLE}.billing_lon ;;
  }

  dimension: billing_state_id {
    type: number
    sql: ${TABLE}.billing_state_id ;;
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

  dimension: device_type {
    type: number
    sql: ${TABLE}.deviceType ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_type {
    type: number
    sql: ${TABLE}.discount_type ;;
  }

  dimension: discount_value {
    type: number
    sql: ${TABLE}.discount_value ;;
  }

  dimension: patient_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_id ;;
  }

  dimension: payment_method_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.payment_method_id ;;
  }

  dimension: promo_balance_amount {
    type: number
    sql: ${TABLE}.promo_balance_amount ;;
  }

  dimension: promo_code_discount_amount {
    type: number
    sql: ${TABLE}.promo_code_discount_amount ;;
  }

  dimension: promo_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.promo_code_id ;;
  }

  dimension: promo_code_text {
    type: string
    sql: ${TABLE}.promo_code_text ;;
  }

  dimension: recommendation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.recommendation_id ;;
  }

  dimension: referral_patient_id {
    type: number
    sql: ${TABLE}.referral_patient_id ;;
  }

  dimension_group: shipped {
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
    sql: ${TABLE}.shipped_at ;;
  }

  dimension: shipping_address1 {
    type: string
    sql: ${TABLE}.shipping_address1 ;;
  }

  dimension: shipping_address2 {
    type: string
    sql: ${TABLE}.shipping_address2 ;;
  }

  dimension: shipping_address_id {
    type: number
    sql: ${TABLE}.shipping_address_id ;;
  }

  dimension: shipping_amount {
    type: number
    sql: ${TABLE}.shipping_amount ;;
  }

  dimension: shipping_city_id {
    type: number
    sql: ${TABLE}.shipping_city_id ;;
  }

  dimension: shipping_county_id {
    type: number
    sql: ${TABLE}.shipping_county_id ;;
  }

  dimension: shipping_csz_id {
    type: number
    sql: ${TABLE}.shipping_csz_id ;;
  }

  dimension: shipping_lat {
    type: number
    sql: ${TABLE}.shipping_lat ;;
  }

  dimension: shipping_lon {
    type: number
    sql: ${TABLE}.shipping_lon ;;
  }

  dimension: shipping_state_id {
    type: number
    sql: ${TABLE}.shipping_state_id ;;
  }

  dimension: shipping_zip_id {
    type: number
    sql: ${TABLE}.shipping_zip_id ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension_group: tracked {
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
    sql: ${TABLE}.tracked_at ;;
  }

  dimension: tracking_carrier {
    type: number
    sql: ${TABLE}.tracking_carrier ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      billing_cardholder_first_name,
      billing_cardholder_last_name,
      patient.first_name,
      patient.last_name,
      patient.middle_name,
      patient.current_recommendation_doctor_name,
      patient.nickname,
      patient.merged_to_patient_id,
      recommendation.id,
      recommendation.doctor_first_name,
      recommendation.doctor_last_name,
      recommendation.patient_first_name,
      recommendation.patient_middle_name,
      recommendation.patient_last_name,
      recommendation.medibook_office_name,
      recommendation.medibook_company_name,
      appointment.medibook_appointment_id,
      promo_code.id,
      promo_code.name,
      payment_method.id,
      payment_method.cardholder_first_name,
      payment_method.cardholder_last_name,
      order_item.count,
      order_service_package_ref.count,
      order_service_ref.count,
      tracking_log.count,
      transaction.count
    ]
  }
}
