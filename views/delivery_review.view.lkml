view: delivery_review {
  sql_table_name: potify_prod.delivery_review ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bud_quality_rating {
    type: number
    sql: ${TABLE}.bud_quality_rating ;;
  }

  dimension: delivery_time_rating {
    type: number
    sql: ${TABLE}.delivery_time_rating ;;
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
