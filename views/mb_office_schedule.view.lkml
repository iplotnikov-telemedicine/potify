view: mb_office_schedule {
  sql_table_name: potify_prod.mb_office_schedule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}.close_time ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: day_number {
    type: number
    sql: ${TABLE}.day_number ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  dimension_group: open {
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
    sql: ${TABLE}.open_time ;;
  }

  dimension: original_id {
    type: number
    sql: ${TABLE}.original_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
