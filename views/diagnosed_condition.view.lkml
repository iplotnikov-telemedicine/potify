view: diagnosed_condition {
  sql_table_name: potify_prod.diagnosed_condition ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, appointment_diagnosed_conditions_ref.count]
  }
}
