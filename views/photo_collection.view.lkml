view: photo_collection {
  sql_table_name: potify_prod.photo_collection ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      brand.count,
      brand_product.count,
      global_product.count,
      global_product_review.count,
      mb_office.count,
      photo.count
    ]
  }
}
