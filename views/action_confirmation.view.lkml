view: action_confirmation {
  sql_table_name: potify_prod.action_confirmation ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attempt {
    type: number
    sql: ${TABLE}.attempt ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
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

  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }

  dimension: is_confirmed {
    type: yesno
    sql: ${TABLE}.is_confirmed ;;
  }

  dimension: is_expired {
    type: yesno
    sql: ${TABLE}.is_expired ;;
  }

  dimension: nonce {
    type: string
    sql: ${TABLE}.nonce ;;
  }

  dimension: notification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.notification_id ;;
  }

  dimension: patient_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_id ;;
  }

  dimension: type {
    type: string
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
      notification.id
    ]
  }
}
