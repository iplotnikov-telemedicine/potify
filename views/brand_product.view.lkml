view: brand_product {
  sql_table_name: potify_prod.brand_product ;;
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

  dimension: brand_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.brand_id ;;
  }

  dimension: brutto_measuring_method {
    type: string
    sql: ${TABLE}.brutto_measuring_method ;;
  }

  dimension: brutto_weight {
    type: number
    sql: ${TABLE}.brutto_weight ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: cbd {
    type: number
    sql: ${TABLE}.cbd ;;
  }

  dimension: cbn {
    type: number
    sql: ${TABLE}.cbn ;;
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

  dimension: dietary_tag_id {
    type: number
    sql: ${TABLE}.dietary_tag_id ;;
  }

  dimension: is_marijuana_product {
    type: yesno
    sql: ${TABLE}.is_marijuana_product ;;
  }

  dimension: lab_result_uom {
    type: number
    sql: ${TABLE}.lab_result_uom ;;
  }

  dimension: leafly_id {
    type: string
    sql: ${TABLE}.leafly_id ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: material_tag_id {
    type: number
    sql: ${TABLE}.material_tag_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: net_measuring_method {
    type: string
    sql: ${TABLE}.net_measuring_method ;;
  }

  dimension: net_weight {
    type: number
    sql: ${TABLE}.net_weight ;;
  }

  dimension: photo_collection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.photo_collection_id ;;
  }

  dimension: process_tag_id {
    type: number
    sql: ${TABLE}.process_tag_id ;;
  }

  dimension: product_variation_id {
    type: number
    sql: ${TABLE}.product_variation_id ;;
  }

  dimension: review_count {
    type: number
    sql: ${TABLE}.review_count ;;
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

  dimension: strain_id {
    type: number
    sql: ${TABLE}.strain_id ;;
  }

  dimension: strain_type {
    type: number
    sql: ${TABLE}.strain_type ;;
  }

  dimension: suggest_price {
    type: number
    sql: ${TABLE}.suggest_price ;;
  }

  dimension: thc {
    type: number
    sql: ${TABLE}.thc ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.upc ;;
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

  dimension: weedmaps_id {
    type: string
    sql: ${TABLE}.weedmaps_id ;;
  }

  measure: count_of_brand_products {
    type: count
    drill_fields: [detail*]
  }

  measure: number_of_brand_products {
    type: count
    # sql: ${id} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      brand.id,
      brand.name,
      photo_collection.id,
      brand_product_property_ref.count,
      brand_product_state.count
    ]
  }
}
