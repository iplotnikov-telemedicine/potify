view: medication_photo {
  sql_table_name: potify_prod.medication_photo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: medication_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.medication_id ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  measure: count {
    type: count
    drill_fields: [id, medication.id, medication.name]
  }
}
