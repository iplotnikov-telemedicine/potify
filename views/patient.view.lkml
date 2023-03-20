view: patient {
  sql_table_name: potify_prod.patient ;;
  drill_fields: [merged_to_patient_id]

  filter: patient_doc_checked_time_filter {
    type: date_time
    convert_tz: no
  }

  dimension: merged_to_patient_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.merged_to_patient_id ;;
  }

  dimension: additional_cell_phone {
    type: string
    sql: ${TABLE}.additional_cell_phone ;;
  }

  dimension: additional_phone_verify_code {
    type: number
    sql: ${TABLE}.additional_phone_verify_code ;;
  }

  dimension: admin_note {
    type: string
    sql: ${TABLE}.admin_note ;;
  }

  dimension: agile_crm_contact_id {
    type: string
    sql: ${TABLE}.agile_crm_contact_id ;;
  }

  dimension: alt_email {
    type: string
    sql: ${TABLE}.alt_email ;;
  }

  dimension: announcements {
    type: string
    sql: ${TABLE}.announcements ;;
  }

  dimension: authorize_net_customer_id {
    type: number
    sql: ${TABLE}.authorize_net_customer_id ;;
  }

  dimension: avatar_background {
    type: number
    sql: ${TABLE}.avatar_background ;;
  }

  dimension: avatar_image {
    type: number
    sql: ${TABLE}.avatar_image ;;
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

  dimension: cell_phone {
    type: string
    sql: ${TABLE}.cell_phone ;;
  }

  dimension: checked_documents_by_user {
    type: number
    sql: ${TABLE}.checked_documents_by_user ;;
  }

  dimension: full_name {
    type: string
    sql: CONCAT_WS(' ', ${first_name}, IF(${middle_name} != '', ${middle_name}, ''), ${last_name}) ;;
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

  dimension: current_appointment_id {
    type: number
    sql: ${TABLE}.current_appointment_id ;;
  }

  dimension: current_recommendation_doctor_name {
    type: string
    sql: ${TABLE}.current_recommendation_doctor_name ;;
  }

  dimension_group: current_recommendation_expiration {
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
    sql: ${TABLE}.current_recommendation_expiration_date ;;
  }

  dimension: current_recommendation_id {
    type: number
    sql: ${TABLE}.current_recommendation_id ;;
  }

  dimension: decline_reason {
    type: string
    sql: ${TABLE}.decline_reason ;;
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

  dimension: disable_push {
    type: yesno
    sql: ${TABLE}.disable_push ;;
  }

  dimension_group: document_checked {
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
    sql: ${TABLE}.document_checked_at ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: fos_user_id {
    type: number
    sql: ${TABLE}.fos_user_id ;;
  }

  dimension: from_medibook {
    type: yesno
    sql: ${TABLE}.from_medibook ;;
  }

  dimension: gender {
    type: number
    sql: ${TABLE}.gender ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}.home_phone ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  dimension: invitation_reward_id {
    type: number
    sql: ${TABLE}.invitation_reward_id ;;
  }

  dimension: invited_by {
    type: number
    sql: ${TABLE}.invited_by ;;
  }

  dimension: invited_company_id {
    type: number
    sql: ${TABLE}.invited_company_id ;;
  }

  dimension: is_bounced {
    type: yesno
    sql: ${TABLE}.is_bounced ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_from_2d_barcode {
    type: yesno
    sql: ${TABLE}.is_from_2d_barcode ;;
  }

  dimension: is_main_document_auto_recognized {
    type: yesno
    sql: ${TABLE}.is_main_document_auto_recognized ;;
  }

  dimension: is_not_call {
    type: yesno
    sql: ${TABLE}.is_not_call ;;
  }

  dimension: is_not_send_email {
    type: yesno
    sql: ${TABLE}.is_not_send_email ;;
  }

  dimension: is_not_send_mail {
    type: yesno
    sql: ${TABLE}.is_not_send_mail ;;
  }

  dimension: is_not_send_sms {
    type: yesno
    sql: ${TABLE}.is_not_send_sms ;;
  }

  dimension: is_temporary {
    type: yesno
    sql: ${TABLE}.is_temporary ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: last_service_id {
    type: number
    sql: ${TABLE}.last_service_id ;;
  }

  dimension: main_document {
    type: string
    sql: ${TABLE}.main_document ;;
  }

  dimension_group: main_document_expiration {
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
    sql: ${TABLE}.main_document_expiration_date ;;
  }

  dimension: main_document_file_id {
    type: number
    sql: ${TABLE}.main_document_file_id ;;
  }

  dimension: current_main_document_id {
    type: number
    sql: ${TABLE}.current_main_document_id ;;
  }

  dimension: main_document_number {
    type: string
    sql: ${TABLE}.main_document_number ;;
  }

  dimension: main_document_state {
    type: string
    sql: ${TABLE}.main_document_state ;;
  }

  dimension: main_document_type {
    type: string
    sql: ${TABLE}.main_document_type ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  dimension: doc_checked_at {
    type: date_time
    sql: ${TABLE}.doc_checked_at ;;
  }

  dimension: medibook_id {
    type: number
    sql: ${TABLE}.medibook_id ;;
  }

  dimension: medibook_staff_id {
    type: number
    sql: ${TABLE}.medibook_staff_id ;;
  }

  dimension_group: medical_confirm {
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
    sql: ${TABLE}.medical_confirm_at ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}.nickname ;;
  }

  dimension: office_phone {
    type: string
    sql: ${TABLE}.office_phone ;;
  }

  dimension: pending_promo_balance {
    type: number
    sql: ${TABLE}.pending_promo_balance ;;
  }

  dimension: phone_verification_cpde {
    type: number
    sql: ${TABLE}.phone_verification_cpde ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.photo ;;
  }

  dimension: photo_print_id {
    type: string
    sql: ${TABLE}.photo_print_id ;;
  }

  dimension: priority_language {
    type: number
    sql: ${TABLE}.priority_language ;;
  }

  dimension: promo_balance {
    type: number
    sql: ${TABLE}.promo_balance ;;
  }

  dimension: promo_code {
    type: string
    sql: ${TABLE}.promo_code ;;
  }

  dimension: promo_invites_count {
    type: number
    sql: ${TABLE}.promo_invites_count ;;
  }

  dimension: promo_percent {
    type: number
    sql: ${TABLE}.promo_percent ;;
  }

  dimension: promo_pin {
    type: string
    sql: ${TABLE}.promo_pin ;;
  }

  dimension: referral_id {
    type: number
    sql: ${TABLE}.referral_id ;;
  }

  dimension: reward_account_info_received {
    type: yesno
    sql: ${TABLE}.reward_account_info_received ;;
  }

  dimension: reward_invite_received {
    type: yesno
    sql: ${TABLE}.reward_invite_received ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.signature ;;
  }

  dimension_group: state_id_issue {
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
    sql: ${TABLE}.state_id_issue_date ;;
  }

  dimension: state_id_side_a {
    type: string
    sql: ${TABLE}.state_id_side_a ;;
  }

  dimension: state_id_side_b {
    type: string
    sql: ${TABLE}.state_id_side_b ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: status_documents {
    type: number
    sql: ${TABLE}.status_documents ;;
  }

  dimension: status_email {
    type: number
    sql: ${TABLE}.status_email ;;
  }

  dimension: status_phone {
    type: number
    sql: ${TABLE}.status_phone ;;
  }

  dimension: status_recommendation {
    type: number
    sql: ${TABLE}.status_recommendation ;;
  }

  dimension: status_user_profile {
    type: number
    sql: ${TABLE}.status_user_profile ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  dimension: unsubscribe_hash {
    type: string
    sql: ${TABLE}.unsubscribe_hash ;;
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

  dimension: use_invite_code {
    type: yesno
    sql: ${TABLE}.use_invite_code ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      merged_to_patient_id,
      first_name,
      last_name,
      middle_name,
      current_recommendation_doctor_name,
      nickname,
      recommendation.count
    ]
  }
}
