view: medibook_office_amenities_ref {
  sql_table_name: potify_prod.medibook_office_amenities_ref ;;

  dimension: amenities_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.amenities_id ;;
  }

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  measure: count {
    type: count
    drill_fields: [amenities.id, amenities.name]
  }
}
