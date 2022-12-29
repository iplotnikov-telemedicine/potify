view: caregiver {
  sql_table_name: potify_prod.caregiver ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: state_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.stateId ;;
  }

  dimension: state_id_photo {
    type: string
    sql: ${TABLE}.state_id_photo ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      state.id,
      state.name,
      state.fullname,
      appointment.count,
      recommendation.count
    ]
  }
}
