view: medical_record_request {
  sql_table_name: potify_prod.medical_record_request ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: appointment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.appointment_id ;;
  }

  dimension: doctor {
    type: string
    sql: ${TABLE}.doctor ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.signature ;;
  }

  measure: count {
    type: count
    drill_fields: [id, appointment.medibook_appointment_id]
  }
}
