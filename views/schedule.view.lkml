view: schedule {
  sql_table_name: potify_prod.schedule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: doctor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.doctor_id ;;
  }

  dimension_group: ended {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ended_at ;;
  }

  dimension_group: started {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.started_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, doctor.id, doctor.first_name, doctor.last_name, doctor.middle_name]
  }
}
