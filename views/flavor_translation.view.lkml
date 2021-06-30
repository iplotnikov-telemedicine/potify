view: flavor_translation {
  sql_table_name: potify_prod.flavor_translation ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: translatable_id {
    type: number
    sql: ${TABLE}.translatable_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
