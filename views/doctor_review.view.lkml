view: doctor_review {
  sql_table_name: potify_prod.doctor_review ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appointment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appointment_id ;;
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

  dimension: doctor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.doctor_id ;;
  }

  dimension: professional_rating {
    type: number
    sql: ${TABLE}.professional_rating ;;
  }

  dimension: recommendation_rating {
    type: number
    sql: ${TABLE}.recommendation_rating ;;
  }

  dimension: review {
    type: string
    sql: ${TABLE}.review ;;
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
      doctor.id,
      doctor.first_name,
      doctor.last_name,
      doctor.middle_name,
      appointment.medibook_appointment_id
    ]
  }
}
