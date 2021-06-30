connection: "ptoify"

# include all the views
include: "/views/**/*.view"

datagroup: potify_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: potify_default_datagroup

explore: action_confirmation {
  join: patient {
    type: left_outer
    sql_on: ${action_confirmation.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: notification {
    type: left_outer
    sql_on: ${action_confirmation.notification_id} = ${notification.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: address {
  join: city {
    type: left_outer
    sql_on: ${address.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${address.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${address.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${address.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${address.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }
}

explore: allergy {
  join: appointment {
    type: left_outer
    sql_on: ${allergy.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }
}

explore: amenities {}

explore: appointment {
  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }
}

explore: appointment_diagnosed_conditions_ref {
  join: appointment {
    type: left_outer
    sql_on: ${appointment_diagnosed_conditions_ref.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: diagnosed_condition {
    type: left_outer
    sql_on: ${appointment_diagnosed_conditions_ref.diagnosed_condition_id} = ${diagnosed_condition.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }
}

explore: appointment_reject_doctors_ref {
  join: appointment {
    type: left_outer
    sql_on: ${appointment_reject_doctors_ref.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment_reject_doctors_ref.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }
}

explore: appointment_service_package_ref {
  join: appointment {
    type: left_outer
    sql_on: ${appointment_service_package_ref.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: service_package {
    type: left_outer
    sql_on: ${appointment_service_package_ref.service_package_id} = ${service_package.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }
}

explore: appointment_service_ref {
  join: appointment {
    type: left_outer
    sql_on: ${appointment_service_ref.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment_service_ref.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: appointment_symptoms_ref {
  join: appointment {
    type: left_outer
    sql_on: ${appointment_symptoms_ref.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: symptom {
    type: left_outer
    sql_on: ${appointment_symptoms_ref.symptom_id} = ${symptom.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: symptom_category {
    type: left_outer
    sql_on: ${symptom.symptom_category_id} = ${symptom_category.id} ;;
    relationship: many_to_one
  }
}

explore: autologin_token {
  join: fos_user {
    type: left_outer
    sql_on: ${autologin_token.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: bookmark {
  join: patient {
    type: left_outer
    sql_on: ${bookmark.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: global_product {
    type: left_outer
    sql_on: ${bookmark.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: brand {
  join: photo_collection {
    type: left_outer
    sql_on: ${brand.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: brand_favorite {}

explore: brand_product {
  join: brand {
    type: left_outer
    sql_on: ${brand_product.brand_id} = ${brand.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${brand_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: brand_product_favorite {}

explore: brand_product_property {}

explore: brand_product_property_ref {
  join: brand_product {
    type: left_outer
    sql_on: ${brand_product_property_ref.brand_product_id} = ${brand_product.id} ;;
    relationship: many_to_one
  }

  join: brand_product_property {
    type: left_outer
    sql_on: ${brand_product_property_ref.brand_product_property_id} = ${brand_product_property.id} ;;
    relationship: many_to_one
  }

  join: brand {
    type: left_outer
    sql_on: ${brand_product.brand_id} = ${brand.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${brand_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: brand_product_state {
  join: brand_product {
    type: left_outer
    sql_on: ${brand_product_state.brand_product_id} = ${brand_product.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${brand_product_state.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: brand {
    type: left_outer
    sql_on: ${brand_product.brand_id} = ${brand.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${brand_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${state.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: brand_product_translation {}

explore: brand_product_variation {}

explore: brand_state {
  join: brand {
    type: left_outer
    sql_on: ${brand_state.brand_id} = ${brand.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${brand_state.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${brand.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${state.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: brand_translation {}

explore: caregiver {
  join: state {
    type: left_outer
    sql_on: ${caregiver.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${state.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: city {
  join: state {
    type: left_outer
    sql_on: ${city.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: city_zip_ref {
  join: city {
    type: left_outer
    sql_on: ${city_zip_ref.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${city_zip_ref.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${city.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: company {
  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${company.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: country {}

explore: county {
  join: state {
    type: left_outer
    sql_on: ${county.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${county.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: county_city_ref {
  join: county {
    type: left_outer
    sql_on: ${county_city_ref.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${county_city_ref.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${county.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${county.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: county_zip_ref {
  join: county {
    type: left_outer
    sql_on: ${county_zip_ref.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${county_zip_ref.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${county.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${county.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: custom_schedule {
  join: doctor {
    type: left_outer
    sql_on: ${custom_schedule.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }
}

explore: deal {}

explore: deal_deal_ref {
  join: deal {
    type: left_outer
    sql_on: ${deal_deal_ref.deal_id} = ${deal.id} ;;
    relationship: many_to_one
  }
}

explore: delete_log {
  join: doctor {
    type: left_outer
    sql_on: ${delete_log.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${delete_log.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }
}

explore: delivery_review {}

explore: diagnosed_condition {}

explore: discount {}

explore: discount_brand_ref {
  join: discount {
    type: left_outer
    sql_on: ${discount_brand_ref.discount_id} = ${discount.id} ;;
    relationship: many_to_one
  }

  join: brand {
    type: left_outer
    sql_on: ${discount_brand_ref.brand_id} = ${brand.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${brand.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: discount_category_ref {
  join: discount {
    type: left_outer
    sql_on: ${discount_category_ref.discount_id} = ${discount.id} ;;
    relationship: many_to_one
  }
}

explore: discount_happy_hour {
  join: discount {
    type: left_outer
    sql_on: ${discount_happy_hour.discount_id} = ${discount.id} ;;
    relationship: many_to_one
  }
}

explore: discount_product_ref {
  join: discount {
    type: left_outer
    sql_on: ${discount_product_ref.discount_id} = ${discount.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${discount_product_ref.product_id} = ${product.brand_product_id} ;;
    relationship: many_to_one
  }

  join: global_product {
    type: left_outer
    sql_on: ${product.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: doctor {
  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }
}

explore: doctor_document {
  join: doctor {
    type: left_outer
    sql_on: ${doctor_document.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }
}

explore: doctor_language_ref {
  join: doctor {
    type: left_outer
    sql_on: ${doctor_language_ref.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: language {
    type: left_outer
    sql_on: ${doctor_language_ref.language_id} = ${language.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }
}

explore: doctor_office_review {}

explore: doctor_review {
  join: doctor {
    type: left_outer
    sql_on: ${doctor_review.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: appointment {
    type: left_outer
    sql_on: ${doctor_review.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }
}

explore: doctor_service_ref {
  join: doctor {
    type: left_outer
    sql_on: ${doctor_service_ref.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${doctor_service_ref.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: document {
  join: appointment {
    type: left_outer
    sql_on: ${document.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${document.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }
}

explore: effect {}

explore: effect_translation {}

explore: email_newsletter {}

explore: exam_preset {
  join: doctor {
    type: left_outer
    sql_on: ${exam_preset.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${exam_preset.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: favorite {
  join: patient {
    type: left_outer
    sql_on: ${favorite.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: file {}

explore: flavor {}

explore: flavor_translation {}

explore: fos_role {}

explore: fos_user {
  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: fos_user_role_ref {}

explore: global_product {
  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: global_product_group {}

explore: global_product_group_ref {
  join: global_product_group {
    type: left_outer
    sql_on: ${global_product_group_ref.global_product_group_id} = ${global_product_group.id} ;;
    relationship: many_to_one
  }

  join: global_product {
    type: left_outer
    sql_on: ${global_product_group_ref.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: global_product_group_translation {}

explore: global_product_review {
  join: global_product {
    type: left_outer
    sql_on: ${global_product_review.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product_review.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: global_product_review_effect {
  join: global_product {
    type: left_outer
    sql_on: ${global_product_review_effect.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: effect {
    type: left_outer
    sql_on: ${global_product_review_effect.effect_id} = ${effect.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: global_product_review_flavor {
  join: global_product {
    type: left_outer
    sql_on: ${global_product_review_flavor.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: flavor {
    type: left_outer
    sql_on: ${global_product_review_flavor.flavor_id} = ${flavor.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: global_product_section {}

explore: global_product_section_translation {}

explore: global_product_translation {}

explore: intake_clause {}

explore: intake_device {}

explore: invitation_log {}

explore: invitation_reward {}

explore: invite_email {}

explore: lab_result {
  join: product {
    type: left_outer
    sql_on: ${lab_result.product_id} = ${product.brand_product_id} ;;
    relationship: many_to_one
  }

  join: global_product {
    type: left_outer
    sql_on: ${product.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: language {}

explore: location {
  join: zip {
    type: left_outer
    sql_on: ${location.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${location.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${location.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${location.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${location.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: mb_company {}

explore: mb_intake_clause {}

explore: mb_office {
  join: service_package {
    type: left_outer
    sql_on: ${mb_office.service_package_id} = ${service_package.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${mb_office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${mb_office.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${mb_office.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${mb_office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${mb_office.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${mb_office.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: mb_office_favorite {}

explore: mb_office_schedule {}

explore: medibook_office_amenities_ref {
  join: amenities {
    type: left_outer
    sql_on: ${medibook_office_amenities_ref.amenities_id} = ${amenities.id} ;;
    relationship: many_to_one
  }
}

explore: medibook_office_language_ref {
  join: language {
    type: left_outer
    sql_on: ${medibook_office_language_ref.language_id} = ${language.id} ;;
    relationship: many_to_one
  }
}

explore: medical_record_request {
  join: appointment {
    type: left_outer
    sql_on: ${medical_record_request.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }
}

explore: medication {
  join: appointment {
    type: left_outer
    sql_on: ${medication.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }
}

explore: medication_photo {
  join: medication {
    type: left_outer
    sql_on: ${medication_photo.medication_id} = ${medication.id} ;;
    relationship: many_to_one
  }

  join: appointment {
    type: left_outer
    sql_on: ${medication.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${appointment.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }
}

explore: menu {
  join: service_category {
    type: left_outer
    sql_on: ${menu.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: migration_versions {}

explore: notification {}

explore: notification_recipients {
  join: notification {
    type: left_outer
    sql_on: ${notification_recipients.notification_id} = ${notification.id} ;;
    relationship: many_to_one
  }
}

explore: office {
  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${office.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${office.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }
}

explore: onetime_auth_token {
  join: patient {
    type: left_outer
    sql_on: ${onetime_auth_token.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: order {
  join: patient {
    type: left_outer
    sql_on: ${order.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${order.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: appointment {
    type: left_outer
    sql_on: ${order.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${recommendation.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${recommendation.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${recommendation.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${recommendation.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }
}

explore: order_item {
  join: service {
    type: left_outer
    sql_on: ${order_item.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${order_item.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: service_package {
    type: left_outer
    sql_on: ${order_item.service_package_id} = ${service_package.id} ;;
    relationship: many_to_one
  }

  join: service_package_item {
    type: left_outer
    sql_on: ${order_item.service_package_item_id} = ${service_package_item.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${order_item.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${order.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: appointment {
    type: left_outer
    sql_on: ${order.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }
}

explore: order_number {}

explore: order_service_package_ref {
  join: order {
    type: left_outer
    sql_on: ${order_service_package_ref.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: service_package {
    type: left_outer
    sql_on: ${order_service_package_ref.service_package_id} = ${service_package.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${order.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${order.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: appointment {
    type: left_outer
    sql_on: ${order.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${recommendation.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${recommendation.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${recommendation.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${recommendation.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }
}

explore: order_service_ref {
  join: order {
    type: left_outer
    sql_on: ${order_service_ref.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${order_service_ref.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${order.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${order.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: appointment {
    type: left_outer
    sql_on: ${order.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${recommendation.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${recommendation.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${recommendation.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${recommendation.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: parent_global_product {
  join: global_product {
    type: left_outer
    sql_on: ${parent_global_product.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: patient {
  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: patient_deal_ref {
  join: patient {
    type: left_outer
    sql_on: ${patient_deal_ref.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: deal {
    type: left_outer
    sql_on: ${patient_deal_ref.deal_id} = ${deal.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: patient_email_newsletter_ref {
  join: patient {
    type: left_outer
    sql_on: ${patient_email_newsletter_ref.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: email_newsletter {
    type: left_outer
    sql_on: ${patient_email_newsletter_ref.email_newsletter_id} = ${email_newsletter.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: patient_phone_history {
  join: patient {
    type: left_outer
    sql_on: ${patient_phone_history.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: patient_signup {
  join: patient {
    type: left_outer
    sql_on: ${patient_signup.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: document {
    type: left_outer
    sql_on: ${patient_signup.document_id} = ${document.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: appointment {
    type: left_outer
    sql_on: ${document.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${appointment.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${appointment.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${appointment.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${appointment.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${appointment.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }
}

explore: payment_method {
  join: patient {
    type: left_outer
    sql_on: ${payment_method.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: payout {
  join: doctor {
    type: left_outer
    sql_on: ${payout.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${order.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${order.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: appointment {
    type: left_outer
    sql_on: ${order.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${recommendation.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${recommendation.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: payout_rate {
  join: doctor {
    type: left_outer
    sql_on: ${payout_rate.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }
}

explore: photo {
  join: photo_collection {
    type: left_outer
    sql_on: ${photo.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: photo_collection {}

explore: presets {}

explore: product {
  join: global_product {
    type: left_outer
    sql_on: ${product.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: product_categories {}

explore: product_category_order {}

explore: product_effect {
  join: global_product {
    type: left_outer
    sql_on: ${product_effect.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: effect {
    type: left_outer
    sql_on: ${product_effect.effect_id} = ${effect.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: product_flavor {
  join: global_product {
    type: left_outer
    sql_on: ${product_flavor.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: flavor {
    type: left_outer
    sql_on: ${product_flavor.flavor_id} = ${flavor.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: product_position {
  join: product {
    type: left_outer
    sql_on: ${product_position.product_id} = ${product.brand_product_id} ;;
    relationship: many_to_one
  }

  join: global_product {
    type: left_outer
    sql_on: ${product_position.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: promo_balance_log {
  join: patient {
    type: left_outer
    sql_on: ${promo_balance_log.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: shop_order {
    type: left_outer
    sql_on: ${promo_balance_log.shop_order_id} = ${shop_order.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${shop_order.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${shop_order.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${shop_order.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: discount {
    type: left_outer
    sql_on: ${shop_order.discount_id} = ${discount.id} ;;
    relationship: many_to_one
  }
}

explore: promo_code {}

explore: promo_code_service_ref {
  join: promo_code {
    type: left_outer
    sql_on: ${promo_code_service_ref.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${promo_code_service_ref.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: recommendation {
  join: patient {
    type: left_outer
    sql_on: ${recommendation.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${recommendation.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${recommendation.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${recommendation.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${recommendation.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }
}

explore: recommendation_to_company_sync {
  join: company {
    type: left_outer
    sql_on: ${recommendation_to_company_sync.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${company.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: referral {}

explore: review {
  join: patient {
    type: left_outer
    sql_on: ${review.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: review_report {
  join: patient {
    type: left_outer
    sql_on: ${review_report.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: review {
    type: left_outer
    sql_on: ${review_report.review_id} = ${review.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: review_vote {
  join: patient {
    type: left_outer
    sql_on: ${review_vote.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: review {
    type: left_outer
    sql_on: ${review_vote.review_id} = ${review.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: schedule {
  join: doctor {
    type: left_outer
    sql_on: ${schedule.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${doctor.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${doctor.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${doctor.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }
}

explore: service {
  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: service_category {}

explore: service_diagnosed_condition_ref {
  join: service {
    type: left_outer
    sql_on: ${service_diagnosed_condition_ref.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: service_intake_clause_ref {
  join: service {
    type: left_outer
    sql_on: ${service_intake_clause_ref.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: service_package {}

explore: service_package_item {
  join: service_package {
    type: left_outer
    sql_on: ${service_package_item.service_package_id} = ${service_package.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${service_package_item.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: service_service_ref {
  join: service {
    type: left_outer
    sql_on: ${service_service_ref.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: service_symptom_category_ref {
  join: service {
    type: left_outer
    sql_on: ${service_symptom_category_ref.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: shop_cart {
  join: patient {
    type: left_outer
    sql_on: ${shop_cart.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: discount {
    type: left_outer
    sql_on: ${shop_cart.discount_id} = ${discount.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: shop_cart_item {
  join: shop_cart {
    type: left_outer
    sql_on: ${shop_cart_item.shop_cart_id} = ${shop_cart.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${shop_cart_item.product_id} = ${product.brand_product_id} ;;
    relationship: many_to_one
  }

  join: discount {
    type: left_outer
    sql_on: ${shop_cart_item.discount_id} = ${discount.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${shop_cart.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: global_product {
    type: left_outer
    sql_on: ${product.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: shop_order {
  join: patient {
    type: left_outer
    sql_on: ${shop_order.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${shop_order.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${shop_order.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${shop_order.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${shop_order.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: discount {
    type: left_outer
    sql_on: ${shop_order.discount_id} = ${discount.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: shop_order_item {
  join: shop_order {
    type: left_outer
    sql_on: ${shop_order_item.shop_order_id} = ${shop_order.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${shop_order_item.product_id} = ${product.brand_product_id} ;;
    relationship: many_to_one
  }

  join: discount {
    type: left_outer
    sql_on: ${shop_order_item.discount_id} = ${discount.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${shop_order.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${shop_order.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${shop_order.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${shop_order.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${shop_order.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: global_product {
    type: left_outer
    sql_on: ${product.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: similar_product {
  join: product {
    type: left_outer
    sql_on: ${similar_product.product_id} = ${product.brand_product_id} ;;
    relationship: many_to_one
  }

  join: global_product {
    type: left_outer
    sql_on: ${product.global_product_id} = ${global_product.id} ;;
    relationship: many_to_one
  }

  join: photo_collection {
    type: left_outer
    sql_on: ${global_product.photo_collection_id} = ${photo_collection.id} ;;
    relationship: many_to_one
  }
}

explore: staff {
  join: fos_user {
    type: left_outer
    sql_on: ${staff.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }
}

explore: staff_offices_ref {
  join: staff {
    type: left_outer
    sql_on: ${staff_offices_ref.staff_id} = ${staff.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${staff_offices_ref.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${staff.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${office.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${office.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${office.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }
}

explore: state {
  join: country {
    type: left_outer
    sql_on: ${state.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: storefront_review {}

explore: symptom {
  join: symptom_category {
    type: left_outer
    sql_on: ${symptom.symptom_category_id} = ${symptom_category.id} ;;
    relationship: many_to_one
  }
}

explore: symptom_category {}

explore: tag {}

explore: tax_additional {
  join: tax_tier {
    type: left_outer
    sql_on: ${tax_additional.tax_tier_id} = ${tax_tier.id} ;;
    relationship: many_to_one
  }
}

explore: tax_city_local {
  join: tax_tier {
    type: left_outer
    sql_on: ${tax_city_local.tax_tier_id} = ${tax_tier.id} ;;
    relationship: many_to_one
  }
}

explore: tax_city_local_rate {}

explore: tax_config {}

explore: tax_excise {
  join: tax_tier {
    type: left_outer
    sql_on: ${tax_excise.tax_tier_id} = ${tax_tier.id} ;;
    relationship: many_to_one
  }
}

explore: tax_patient_type_config {
  join: tax_config {
    type: left_outer
    sql_on: ${tax_patient_type_config.tax_config_id} = ${tax_config.id} ;;
    relationship: many_to_one
  }

  join: tax_tier {
    type: left_outer
    sql_on: ${tax_patient_type_config.tax_tier_id} = ${tax_tier.id} ;;
    relationship: many_to_one
  }
}

explore: tax_sales {
  join: tax_tier {
    type: left_outer
    sql_on: ${tax_sales.tax_tier_id} = ${tax_tier.id} ;;
    relationship: many_to_one
  }
}

explore: tax_sales_rate {}

explore: tax_tier {}

explore: timezone {
  join: zone {
    type: left_outer
    sql_on: ${timezone.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }
}

explore: tracking_log {
  join: order {
    type: left_outer
    sql_on: ${tracking_log.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${order.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${order.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: appointment {
    type: left_outer
    sql_on: ${order.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${recommendation.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${recommendation.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${recommendation.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${recommendation.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${payout.transaction_id} = ${transaction.transaction_id} ;;
    relationship: many_to_one
  }
}

explore: transaction {
  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: patient {
    type: left_outer
    sql_on: ${order.patient_id} = ${patient.merged_to_patient_id} ;;
    relationship: many_to_one
  }

  join: recommendation {
    type: left_outer
    sql_on: ${order.recommendation_id} = ${recommendation.id} ;;
    relationship: many_to_one
  }

  join: appointment {
    type: left_outer
    sql_on: ${order.appointment_id} = ${appointment.medibook_appointment_id} ;;
    relationship: many_to_one
  }

  join: promo_code {
    type: left_outer
    sql_on: ${order.promo_code_id} = ${promo_code.id} ;;
    relationship: many_to_one
  }

  join: payment_method {
    type: left_outer
    sql_on: ${order.payment_method_id} = ${payment_method.id} ;;
    relationship: many_to_one
  }

  join: fos_user {
    type: left_outer
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
    relationship: many_to_one
  }

  join: referral {
    type: left_outer
    sql_on: ${patient.referral_id} = ${referral.id} ;;
    relationship: many_to_one
  }

  join: invitation_reward {
    type: left_outer
    sql_on: ${patient.invitation_reward_id} = ${invitation_reward.id} ;;
    relationship: many_to_one
  }

  join: zone {
    type: left_outer
    sql_on: ${fos_user.zone_id} = ${zone.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${fos_user.country_id} = ${country.id} ;;
    relationship: many_to_one
  }

  join: state {
    type: left_outer
    sql_on: ${fos_user.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: doctor {
    type: left_outer
    sql_on: ${recommendation.doctor_id} = ${doctor.id} ;;
    relationship: many_to_one
  }

  join: company {
    type: left_outer
    sql_on: ${recommendation.company_id} = ${company.id} ;;
    relationship: many_to_one
  }

  join: office {
    type: left_outer
    sql_on: ${recommendation.office_id} = ${office.id} ;;
    relationship: many_to_one
  }

  join: caregiver {
    type: left_outer
    sql_on: ${recommendation.caregiver_id} = ${caregiver.id} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${recommendation.file_id} = ${file.id} ;;
    relationship: many_to_one
  }

  join: payout_rate {
    type: left_outer
    sql_on: ${doctor.payout_rate_id} = ${payout_rate.id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${company.city_id} = ${city.id} ;;
    relationship: many_to_one
  }

  join: zip {
    type: left_outer
    sql_on: ${company.zip_id} = ${zip.id} ;;
    relationship: many_to_one
  }

  join: county {
    type: left_outer
    sql_on: ${company.county_id} = ${county.id} ;;
    relationship: many_to_one
  }

  join: service {
    type: left_outer
    sql_on: ${appointment.service_id} = ${service.id} ;;
    relationship: many_to_one
  }

  join: payout {
    type: left_outer
    sql_on: ${appointment.payout_id} = ${payout.id} ;;
    relationship: many_to_one
  }

  join: service_category {
    type: left_outer
    sql_on: ${service.service_category_id} = ${service_category.id} ;;
    relationship: many_to_one
  }
}

explore: us_setting {}

explore: zip {
  join: state {
    type: left_outer
    sql_on: ${zip.state_id} = ${state.id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${zip.country_id} = ${country.id} ;;
    relationship: many_to_one
  }
}

explore: zone {}
