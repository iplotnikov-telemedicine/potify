view: brand_product_translation {
  sql_table_name: potify_prod.brand_product_translation ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: translatable_id {
    type: number
    sql: ${TABLE}.translatable_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
