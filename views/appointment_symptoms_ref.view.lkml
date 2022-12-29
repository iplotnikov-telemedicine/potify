view: appointment_symptoms_ref {
  sql_table_name: potify_prod.appointment_symptoms_ref ;;

  dimension: appointment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appointment_id ;;
  }

  dimension: symptom_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.symptom_id ;;
  }

  measure: count {
    type: count
    drill_fields: [appointment.medibook_appointment_id, symptom.id, symptom.name]
  }
}
