view: symptom {
  sql_table_name: potify_prod.symptom ;;
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

  dimension: symptom_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.symptom_category_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, symptom_category.id, symptom_category.name, appointment_symptoms_ref.count]
  }
}
