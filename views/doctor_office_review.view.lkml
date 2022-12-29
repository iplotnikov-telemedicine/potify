view: doctor_office_review {
  sql_table_name: potify_prod.doctor_office_review ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: knowledge_rating {
    type: number
    sql: ${TABLE}.knowledge_rating ;;
  }

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  dimension: patient_experience_rating {
    type: number
    sql: ${TABLE}.patient_experience_rating ;;
  }

  dimension: staff_rating {
    type: number
    sql: ${TABLE}.staff_rating ;;
  }

  dimension: wait_time_rating {
    type: number
    sql: ${TABLE}.wait_time_rating ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
