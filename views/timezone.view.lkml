view: timezone {
  sql_table_name: potify_prod.timezone ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.abbreviation ;;
  }

  dimension: dst {
    type: number
    sql: ${TABLE}.dst ;;
  }

  dimension: gmt_offset {
    type: number
    sql: ${TABLE}.gmt_offset ;;
  }

  dimension: time_start {
    type: number
    sql: ${TABLE}.time_start ;;
  }

  dimension: zone_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.zone_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, zone.id, zone.zone_name, zone.name]
  }
}
