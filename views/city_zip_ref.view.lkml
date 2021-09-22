view: city_zip_ref {
  sql_table_name: potify_prod.city_zip_ref ;;

  dimension: city_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.city_id ;;
  }

  dimension: zip_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.zip_id ;;
  }

  measure: count {
    type: count
    drill_fields: [city.id, city.name, city.full_name, zip.id, zip.name]
  }
}
