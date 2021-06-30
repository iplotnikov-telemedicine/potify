view: patient_deal_ref {
  sql_table_name: potify_prod.patient_deal_ref ;;

  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.deal_id ;;
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
      patient.first_name,
      patient.last_name,
      patient.middle_name,
      patient.current_recommendation_doctor_name,
      patient.nickname,
      patient.merged_to_patient_id,
      deal.id,
      deal.name
    ]
  }
}
