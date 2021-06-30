view: storefront_review {
  sql_table_name: potify_prod.storefront_review ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: atmosphere_rating {
    type: number
    sql: ${TABLE}.atmosphere_rating ;;
  }

  dimension: bud_quality_rating {
    type: number
    sql: ${TABLE}.bud_quality_rating ;;
  }

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  dimension: recommended_rating {
    type: number
    sql: ${TABLE}.recommended_rating ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
