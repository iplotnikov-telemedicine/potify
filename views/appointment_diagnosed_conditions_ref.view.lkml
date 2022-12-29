view: appointment_diagnosed_conditions_ref {
  sql_table_name: potify_prod.appointment_diagnosed_conditions_ref ;;

  dimension: appointment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appointment_id ;;
  }

  dimension: diagnosed_condition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.diagnosed_condition_id ;;
  }

  measure: count {
    type: count
    drill_fields: [appointment.medibook_appointment_id, diagnosed_condition.id, diagnosed_condition.name]
  }
}
