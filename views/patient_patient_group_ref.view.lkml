view: patient_patient_group_ref {
  sql_table_name: potify_prod.patient_patient_group_ref ;;

  dimension: patient_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_group_id ;;
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
      patient_group.id,
      patient_group.name,
      patient.first_name,
      patient.last_name,
      patient.middle_name,
      patient.current_recommendation_doctor_name,
      patient.nickname,
      patient.merged_to_patient_id
    ]
  }
}
