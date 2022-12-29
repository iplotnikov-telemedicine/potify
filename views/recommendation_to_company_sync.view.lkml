view: recommendation_to_company_sync {
  sql_table_name: potify_prod.recommendation_to_company_sync ;;

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: rec_id {
    type: number
    sql: ${TABLE}.rec_id ;;
  }

  measure: count {
    type: count
    drill_fields: [company.id, company.name]
  }
}
