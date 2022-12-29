view: zone {
  sql_table_name: potify_prod.zone ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: utc_diff {
    type: number
    sql: ${TABLE}.utc_diff ;;
  }

  dimension: zone_name {
    type: string
    sql: ${TABLE}.zone_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, zone_name, name, fos_user.count, timezone.count]
  }
}
