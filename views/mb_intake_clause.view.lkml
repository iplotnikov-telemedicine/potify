view: mb_intake_clause {
  sql_table_name: potify_prod.mb_intake_clause ;;
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

  dimension: original_id {
    type: number
    sql: ${TABLE}.original_id ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
