view: patient_group {
  sql_table_name: potify_prod.patient_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: original_id {
    type: number
    sql: ${TABLE}.original_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, discount_patient_group_ref.count, patient_patient_group_ref.count]
  }
}
