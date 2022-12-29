view: discount_collection_group {
  sql_table_name: potify_prod.discount_collection_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: collection_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.collection_group_id ;;
  }

  dimension: discount_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.discount_id ;;
  }

  dimension: sorting {
    type: number
    sql: ${TABLE}.sorting ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      collection_group.id,
      collection_group.name,
      discount.id,
      discount.name,
      discount.display_name
    ]
  }
}
