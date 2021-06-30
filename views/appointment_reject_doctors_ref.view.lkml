view: appointment_reject_doctors_ref {
  sql_table_name: potify_prod.appointment_reject_doctors_ref ;;

  dimension: appointment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appointment_id ;;
  }

  dimension: doctor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.doctor_id ;;
  }

  measure: count {
    type: count
    drill_fields: [appointment.medibook_appointment_id, doctor.id, doctor.first_name, doctor.last_name, doctor.middle_name]
  }
}
