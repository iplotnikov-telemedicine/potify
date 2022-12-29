view: county_zip_ref {
  sql_table_name: potify_prod.county_zip_ref ;;

  dimension: county_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.county_id ;;
  }

  dimension: zip_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.zip_id ;;
  }

  measure: count {
    type: count
    drill_fields: [county.id, county.name, zip.id, zip.name]
  }
}
