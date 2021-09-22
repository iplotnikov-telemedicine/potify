view: staff_offices_ref {
  sql_table_name: potify_prod.staff_offices_ref ;;

  dimension: office_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.office_id ;;
  }

  dimension: staff_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.staff_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      staff.id,
      staff.first_name,
      staff.last_name,
      office.id,
      office.business_name,
      office.name
    ]
  }
}
