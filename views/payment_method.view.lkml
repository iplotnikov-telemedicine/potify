view: payment_method {
  sql_table_name: potify_prod.payment_method ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: authorize_net_payment_profile_id {
    type: number
    sql: ${TABLE}.authorize_net_payment_profile_id ;;
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

  dimension: billing_zip_id {
    type: number
    sql: ${TABLE}.billing_zip_id ;;
  }

  dimension: card_code {
    type: string
    sql: ${TABLE}.card_code ;;
  }

  dimension: card_number {
    type: string
    sql: ${TABLE}.card_number ;;
  }

  dimension: card_type {
    type: string
    sql: ${TABLE}.card_type ;;
  }

  dimension: cardholder_first_name {
    type: string
    sql: ${TABLE}.cardholder_first_name ;;
  }

  dimension: cardholder_last_name {
    type: string
    sql: ${TABLE}.cardholder_last_name ;;
  }

  dimension: expiration_date {
    type: string
    sql: ${TABLE}.expiration_date ;;
  }

  dimension: patient_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      cardholder_first_name,
      cardholder_last_name,
      patient.first_name,
      patient.last_name,
      patient.middle_name,
      patient.current_recommendation_doctor_name,
      patient.nickname,
      patient.merged_to_patient_id,
      order.count
    ]
  }
}
