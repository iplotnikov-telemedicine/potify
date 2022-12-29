view: promo_balance_log {
  sql_table_name: potify_prod.promo_balance_log ;;
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

  dimension: cashback {
    type: number
    sql: ${TABLE}.cashback ;;
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

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: event_type {
    type: number
    sql: ${TABLE}.event_type ;;
  }

  dimension: invited_email {
    type: string
    sql: ${TABLE}.invited_email ;;
  }

  dimension: inviter_email {
    type: string
    sql: ${TABLE}.inviter_email ;;
  }

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }

  dimension: patient_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_id ;;
  }

  dimension: pending {
    type: yesno
    sql: ${TABLE}.pending ;;
  }

  dimension: returned {
    type: yesno
    sql: ${TABLE}.returned ;;
  }

  dimension: returned_amount {
    type: number
    sql: ${TABLE}.returned_amount ;;
  }

  dimension: shop_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shop_order_id ;;
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
      patient.first_name,
      patient.last_name,
      patient.middle_name,
      patient.current_recommendation_doctor_name,
      patient.nickname,
      patient.merged_to_patient_id,
      shop_order.id,
      shop_order.city_name,
      shop_order.county_name,
      shop_order.state_name
    ]
  }
}
