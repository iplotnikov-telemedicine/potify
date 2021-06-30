view: allergy {
  sql_table_name: potify_prod.allergy ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appointment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appointment_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, appointment.medibook_appointment_id]
  }
}
