view: review {
  sql_table_name: potify_prod.review ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension_group: edited {
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
    sql: ${TABLE}.edited_at ;;
  }

  dimension: is_hidden {
    type: yesno
    sql: ${TABLE}.is_hidden ;;
  }

  dimension: overall_rating {
    type: number
    sql: ${TABLE}.overall_rating ;;
  }

  dimension: patient_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_id ;;
  }

  dimension: review {
    type: string
    sql: ${TABLE}.review ;;
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: vote_no {
    type: number
    sql: ${TABLE}.vote_no ;;
  }

  dimension: vote_yes {
    type: number
    sql: ${TABLE}.vote_yes ;;
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
      review_report.count,
      review_vote.count
    ]
  }
}
