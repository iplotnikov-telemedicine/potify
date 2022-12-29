view: discount_medibook_office_ref {
  sql_table_name: potify_prod.discount_medibook_office_ref ;;

  dimension: discount_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.discount_id ;;
  }

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  measure: count {
    type: count
    drill_fields: [discount.id, discount.name, discount.display_name]
  }
}
