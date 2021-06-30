view: medication {
  sql_table_name: potify_prod.medication ;;
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

  dimension: how_long {
    type: string
    sql: ${TABLE}.how_long ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, appointment.medibook_appointment_id, medication_photo.count]
  }
}
