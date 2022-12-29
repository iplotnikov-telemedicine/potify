view: appointment_service_ref {
  sql_table_name: potify_prod.appointment_service_ref ;;

  dimension: appointment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appointment_id ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  measure: count {
    type: count
    drill_fields: [appointment.medibook_appointment_id, service.id, service.name, service.internal_name]
  }
}
