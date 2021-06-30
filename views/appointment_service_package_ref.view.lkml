view: appointment_service_package_ref {
  sql_table_name: potify_prod.appointment_service_package_ref ;;

  dimension: appointment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appointment_id ;;
  }

  dimension: service_package_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_package_id ;;
  }

  measure: count {
    type: count
    drill_fields: [appointment.medibook_appointment_id, service_package.id, service_package.name, service_package.internal_name]
  }
}
