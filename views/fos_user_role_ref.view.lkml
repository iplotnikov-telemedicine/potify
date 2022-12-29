view: fos_user_role_ref {
  sql_table_name: potify_prod.fos_user_role_ref ;;

  dimension: role_id {
    type: number
    sql: ${TABLE}.role_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
