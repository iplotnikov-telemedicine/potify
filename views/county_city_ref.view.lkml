view: county_city_ref {
  sql_table_name: potify_prod.county_city_ref ;;

  dimension: city_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.city_id ;;
  }

  dimension: county_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.county_id ;;
  }

  measure: count {
    type: count
    drill_fields: [county.id, county.name, city.id, city.name, city.full_name]
  }
}
