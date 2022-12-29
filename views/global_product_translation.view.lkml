view: global_product_translation {
  sql_table_name: potify_prod.global_product_translation ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_description {
    type: string
    sql: ${TABLE}.additional_description ;;
  }

  dimension: cultivation_description {
    type: string
    sql: ${TABLE}.cultivation_description ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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
