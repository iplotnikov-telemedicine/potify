view: language {
  sql_table_name: potify_prod.language ;;
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
    drill_fields: [id, name, doctor_language_ref.count, medibook_office_language_ref.count]
  }
}
