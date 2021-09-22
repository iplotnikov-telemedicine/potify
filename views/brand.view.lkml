view: brand {
  sql_table_name: potify_prod.brand ;;
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

  dimension: cover {
    type: string
    sql: ${TABLE}.cover ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }

  dimension: facebook {
    type: string
    sql: ${TABLE}.facebook ;;
  }

  dimension: instagram {
    type: string
    sql: ${TABLE}.instagram ;;
  }

  dimension: leafly_id {
    type: string
    sql: ${TABLE}.leafly_id ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: photo_collection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.photo_collection_id ;;
  }

  dimension: review_count {
    type: number
    sql: ${TABLE}.review_count ;;
  }

  dimension: sale_line {
    type: string
    sql: ${TABLE}.sale_line ;;
  }

  dimension: seo_description {
    type: string
    sql: ${TABLE}.seo_description ;;
  }

  dimension: seo_keywords {
    type: string
    sql: ${TABLE}.seo_keywords ;;
  }

  dimension: seo_title {
    type: string
    sql: ${TABLE}.seo_title ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  dimension: weedmaps_id {
    type: string
    sql: ${TABLE}.weedmaps_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      photo_collection.id,
      brand_product.count,
      brand_state.count,
      discount_brand_ref.count,
      staff_brands_ref.count
    ]
  }
}
