view: global_product_group_translation {
  sql_table_name: potify_prod.global_product_group_translation ;;
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

  dimension: sharing_description {
    type: string
    sql: ${TABLE}.sharing_description ;;
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
