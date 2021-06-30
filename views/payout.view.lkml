view: payout {
  sql_table_name: potify_prod.payout ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: appointment_count {
    type: number
    sql: ${TABLE}.appointment_count ;;
  }

  dimension: doctor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.doctor_id ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: transaction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.transaction_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      doctor.id,
      doctor.first_name,
      doctor.last_name,
      doctor.middle_name,
      transaction.transaction_id,
      appointment.count
    ]
  }
}
