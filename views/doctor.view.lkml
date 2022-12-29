view: doctor {
  sql_table_name: potify_prod.doctor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: about {
    type: string
    sql: ${TABLE}.about ;;
  }

  dimension: active_office_id {
    type: number
    sql: ${TABLE}.active_office_id ;;
  }

  dimension: all_offices_access {
    type: yesno
    sql: ${TABLE}.all_offices_access ;;
  }

  dimension: alt_email {
    type: string
    sql: ${TABLE}.alt_email ;;
  }

  dimension_group: birthday {
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
    sql: ${TABLE}.birthday ;;
  }

  dimension: calendar_color {
    type: string
    sql: ${TABLE}.calendar_color ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: cell_phone {
    type: string
    sql: ${TABLE}.cell_phone ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
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

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: fos_user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.fos_user_id ;;
  }

  dimension: gender {
    type: number
    sql: ${TABLE}.gender ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}.home_phone ;;
  }

  dimension: ics_hash {
    type: string
    sql: ${TABLE}.ics_hash ;;
  }

  dimension: is_ics_generated {
    type: yesno
    sql: ${TABLE}.is_ics_generated ;;
  }

  dimension: is_super_admin {
    type: yesno
    sql: ${TABLE}.is_super_admin ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: license {
    type: string
    sql: ${TABLE}.license ;;
  }

  dimension_group: license_expiration {
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
    sql: ${TABLE}.license_expiration_date ;;
  }

  dimension_group: license_issue {
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
    sql: ${TABLE}.license_issue_date ;;
  }

  dimension: license_photo {
    type: string
    sql: ${TABLE}.license_photo ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: payout_rate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.payout_rate_id ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.photo ;;
  }

  dimension: pin {
    type: number
    sql: ${TABLE}.pin ;;
  }

  dimension: priority_language {
    type: number
    sql: ${TABLE}.priority_language ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.signature ;;
  }

  dimension: state_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_id_photo {
    type: string
    sql: ${TABLE}.state_id_photo ;;
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

  dimension: work_on_demand {
    type: yesno
    sql: ${TABLE}.work_on_demand ;;
  }

  dimension: work_phone {
    type: string
    sql: ${TABLE}.work_phone ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      middle_name,
      fos_user.id,
      fos_user.username,
      company.id,
      company.name,
      state.id,
      state.name,
      state.fullname,
      payout_rate.id,
      appointment.count,
      appointment_reject_doctors_ref.count,
      custom_schedule.count,
      delete_log.count,
      doctor_document.count,
      doctor_language_ref.count,
      doctor_review.count,
      doctor_service_ref.count,
      exam_preset.count,
      payout.count,
      payout_rate.count,
      recommendation.count,
      schedule.count
    ]
  }
}
