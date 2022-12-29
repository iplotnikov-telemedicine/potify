view: doctor_language_ref {
  sql_table_name: potify_prod.doctor_language_ref ;;

  dimension: doctor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.doctor_id ;;
  }

  dimension: language_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.language_id ;;
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
      language.id,
      language.name
    ]
  }
}
