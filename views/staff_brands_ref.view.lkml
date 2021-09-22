view: staff_brands_ref {
  sql_table_name: potify_prod.staff_brands_ref ;;

  dimension: brand_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.brand_id ;;
  }

  dimension: staff_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.staff_id ;;
  }

  measure: count {
    type: count
    drill_fields: [staff.id, staff.first_name, staff.last_name, brand.id, brand.name]
  }
}
