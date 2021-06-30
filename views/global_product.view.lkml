view: global_product {
  sql_table_name: potify_prod.global_product ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: average_rating {
    type: number
    sql: ${TABLE}.average_rating ;;
  }

  dimension: average_yield {
    type: string
    sql: ${TABLE}.average_yield ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: cbd_from {
    type: number
    sql: ${TABLE}.cbdFrom ;;
  }

  dimension: cbd_to {
    type: number
    sql: ${TABLE}.cbdTo ;;
  }

  dimension: cbn_from {
    type: number
    sql: ${TABLE}.cbnFrom ;;
  }

  dimension: cbn_to {
    type: number
    sql: ${TABLE}.cbnTo ;;
  }

  dimension: cover_id {
    type: number
    sql: ${TABLE}.cover_id ;;
  }

  dimension: featured {
    type: yesno
    sql: ${TABLE}.featured ;;
  }

  dimension: flowering_time {
    type: number
    sql: ${TABLE}.flowering_time ;;
  }

  dimension: grow_difficulty {
    type: string
    sql: ${TABLE}.grow_difficulty ;;
  }

  dimension: grow_environment {
    type: string
    sql: ${TABLE}.grow_environment ;;
  }

  dimension: growing_notes {
    type: string
    sql: ${TABLE}.growing_notes ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: is_published {
    type: yesno
    sql: ${TABLE}.is_published ;;
  }

  dimension: leafly_average_rating {
    type: number
    sql: ${TABLE}.leafly_average_rating ;;
  }

  dimension: leafly_review_count {
    type: number
    sql: ${TABLE}.leafly_review_count ;;
  }

  dimension: original_name {
    type: string
    sql: ${TABLE}.original_name ;;
  }

  dimension: outdoor_finish {
    type: string
    sql: ${TABLE}.outdoor_finish ;;
  }

  dimension: photo_collection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.photo_collection_id ;;
  }

  dimension: preferred_medium {
    type: string
    sql: ${TABLE}.preferred_medium ;;
  }

  dimension: review_count {
    type: number
    sql: ${TABLE}.review_count ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: small_cover_id {
    type: number
    sql: ${TABLE}.small_cover_id ;;
  }

  dimension: strain {
    type: number
    sql: ${TABLE}.strain ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}.symbol ;;
  }

  dimension: thc_from {
    type: number
    sql: ${TABLE}.thcFrom ;;
  }

  dimension: thc_to {
    type: number
    sql: ${TABLE}.thcTo ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      original_name,
      photo_collection.id,
      bookmark.count,
      global_product_group_ref.count,
      global_product_review.count,
      global_product_review_effect.count,
      global_product_review_flavor.count,
      parent_global_product.count,
      product.count,
      product_effect.count,
      product_flavor.count,
      product_position.count
    ]
  }
}
