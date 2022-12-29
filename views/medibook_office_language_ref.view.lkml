view: medibook_office_language_ref {
  sql_table_name: potify_prod.medibook_office_language_ref ;;

  dimension: language_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.language_id ;;
  }

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  measure: count {
    type: count
    drill_fields: [language.id, language.name]
  }
}
