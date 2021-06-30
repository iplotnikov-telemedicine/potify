view: migration_versions {
  sql_table_name: potify_prod.migration_versions ;;

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
