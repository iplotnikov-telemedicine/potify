view: mb_office_favorite {
  sql_table_name: potify_prod.mb_office_favorite ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.object_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
