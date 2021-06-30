view: recommendation {
  sql_table_name: potify_prod.recommendation ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: caregiver_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.caregiver_id ;;
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

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: doctor_category {
    type: string
    sql: ${TABLE}.doctor_category ;;
  }

  dimension: doctor_first_name {
    type: string
    sql: ${TABLE}.doctor_first_name ;;
  }

  dimension: doctor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.doctor_id ;;
  }

  dimension: doctor_last_name {
    type: string
    sql: ${TABLE}.doctor_last_name ;;
  }

  dimension: doctor_license {
    type: string
    sql: ${TABLE}.doctor_license ;;
  }

  dimension: expired {
    type: yesno
    sql: ${TABLE}.expired ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.file_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_approved {
    type: yesno
    sql: ${TABLE}.is_approved ;;
  }

  dimension: is_cultivation {
    type: yesno
    sql: ${TABLE}.is_cultivation ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  dimension: medibook_company_name {
    type: string
    sql: ${TABLE}.medibook_company_name ;;
  }

  dimension: medibook_id {
    type: number
    sql: ${TABLE}.medibook_id ;;
  }

  dimension: medibook_office_name {
    type: string
    sql: ${TABLE}.medibook_office_name ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: office_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.office_id ;;
  }

  dimension: original_id {
    type: number
    sql: ${TABLE}.original_id ;;
  }

  dimension: patient_first_name {
    type: string
    sql: ${TABLE}.patient_first_name ;;
  }

  dimension: patient_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_id ;;
  }

  dimension: patient_last_name {
    type: string
    sql: ${TABLE}.patient_last_name ;;
  }

  dimension: patient_middle_name {
    type: string
    sql: ${TABLE}.patient_middle_name ;;
  }

  dimension: patient_state_id {
    type: string
    sql: ${TABLE}.patient_state_id ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.photo ;;
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

  dimension_group: valid_from {
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
    sql: ${TABLE}.valid_from ;;
  }

  dimension_group: valid_to {
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
    sql: ${TABLE}.valid_to ;;
  }

  dimension: verification_provider {
    type: number
    sql: ${TABLE}.verification_provider ;;
  }

  dimension: verification_provider_data {
    type: string
    sql: ${TABLE}.verification_provider_data ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      doctor_first_name,
      doctor_last_name,
      patient_first_name,
      patient_middle_name,
      patient_last_name,
      medibook_office_name,
      medibook_company_name,
      patient.first_name,
      patient.last_name,
      patient.middle_name,
      patient.current_recommendation_doctor_name,
      patient.nickname,
      patient.merged_to_patient_id,
      doctor.id,
      doctor.first_name,
      doctor.last_name,
      doctor.middle_name,
      company.id,
      company.name,
      office.id,
      office.business_name,
      office.name,
      caregiver.id,
      caregiver.first_name,
      caregiver.last_name,
      file.id,
      appointment.count,
      order.count,
      order_item.count
    ]
  }
}
