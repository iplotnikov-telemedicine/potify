view: appointment {
  sql_table_name: potify_prod.appointment ;;
  drill_fields: [medibook_appointment_id]

  dimension: medibook_appointment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.medibook_appointment_id ;;
  }

  dimension: call_ended {
    type: yesno
    sql: ${TABLE}.call_ended ;;
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

  dimension: complaints {
    type: string
    sql: ${TABLE}.complaints ;;
  }

  dimension: complaints_time {
    type: string
    sql: ${TABLE}.complaints_time ;;
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

  dimension: decline_reason {
    type: yesno
    sql: ${TABLE}.decline_reason ;;
  }

  dimension: device_type {
    type: number
    sql: ${TABLE}.deviceType ;;
  }

  dimension: doctor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.doctor_id ;;
  }

  dimension_group: ended {
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
    sql: ${TABLE}.ended_at ;;
  }

  dimension: exam {
    type: string
    sql: ${TABLE}.exam ;;
  }

  dimension: has_recommendation {
    type: yesno
    sql: ${TABLE}.has_recommendation ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: initial_recommendation_id {
    type: number
    sql: ${TABLE}.initial_recommendation_id ;;
  }

  dimension: is_double_slot {
    type: yesno
    sql: ${TABLE}.is_double_slot ;;
  }

  dimension: is_intake_filled {
    type: yesno
    sql: ${TABLE}.is_intake_filled ;;
  }

  dimension: is_need_exam_generation {
    type: yesno
    sql: ${TABLE}.is_need_exam_generation ;;
  }

  dimension: is_see_now {
    type: yesno
    sql: ${TABLE}.is_see_now ;;
  }

  dimension: is_sent_not_answered {
    type: yesno
    sql: ${TABLE}.is_sent_not_answered ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  dimension: medibook_free {
    type: yesno
    sql: ${TABLE}.medibook_free ;;
  }

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  dimension: medibook_patient_id {
    type: number
    sql: ${TABLE}.medibook_patient_id ;;
  }

  dimension: medibook_patient_is_from_zenmd {
    type: number
    sql: ${TABLE}.medibook_patient_is_from_zenmd ;;
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

  dimension: patient_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_id ;;
  }

  dimension: payout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.payout_id ;;
  }

  dimension: recommendation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.recommendation_id ;;
  }

  dimension: request_cultivation {
    type: yesno
    sql: ${TABLE}.request_cultivation ;;
  }

  dimension: result_photo {
    type: string
    sql: ${TABLE}.result_photo ;;
  }

  dimension: room {
    type: string
    sql: ${TABLE}.room ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.signature ;;
  }

  dimension: slots_count {
    type: number
    sql: ${TABLE}.slots_count ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}.started_at ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: type {
    type: number
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

  dimension: use_promo_code {
    type: yesno
    sql: ${TABLE}.use_promo_code ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      medibook_appointment_id,
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
      office.id,
      office.business_name,
      office.name,
      company.id,
      company.name,
      caregiver.id,
      caregiver.first_name,
      caregiver.last_name,
      recommendation.id,
      recommendation.doctor_first_name,
      recommendation.doctor_last_name,
      recommendation.patient_first_name,
      recommendation.patient_middle_name,
      recommendation.patient_last_name,
      recommendation.medibook_office_name,
      recommendation.medibook_company_name,
      service.id,
      service.name,
      service.internal_name,
      payout.id,
      allergy.count,
      appointment_diagnosed_conditions_ref.count,
      appointment_reject_doctors_ref.count,
      appointment_service_package_ref.count,
      appointment_service_ref.count,
      appointment_symptoms_ref.count,
      doctor_review.count,
      document.count,
      medical_record_request.count,
      medication.count,
      order.count
    ]
  }
}
