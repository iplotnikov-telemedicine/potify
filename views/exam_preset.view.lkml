view: exam_preset {
  sql_table_name: potify_prod.exam_preset ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: doctor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.doctor_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: preset {
    type: string
    sql: ${TABLE}.preset ;;
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
      id,
      name,
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
