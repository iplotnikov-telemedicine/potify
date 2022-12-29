view: doctor_service_ref {
  sql_table_name: potify_prod.doctor_service_ref ;;

  dimension: doctor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.doctor_id ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      doctor.id,
      doctor.first_name,
      doctor.last_name,
      doctor.middle_name,
      service.id,
      service.name,
      service.internal_name
    ]
  }
}
