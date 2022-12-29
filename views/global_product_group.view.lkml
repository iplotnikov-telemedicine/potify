view: global_product_group {
  sql_table_name: potify_prod.global_product_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: dynamic {
    type: yesno
    sql: ${TABLE}.dynamic ;;
  }

  dimension: dynamic_options {
    type: string
    sql: ${TABLE}.dynamic_options ;;
  }

  dimension: original_name {
    type: string
    sql: ${TABLE}.original_name ;;
  }

  dimension: section_id {
    type: number
    sql: ${TABLE}.section_id ;;
  }

  dimension: sharing_photo_id {
    type: number
    sql: ${TABLE}.sharing_photo_id ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.sort ;;
  }

  dimension: tile_photo_id {
    type: number
    sql: ${TABLE}.tile_photo_id ;;
  }

  dimension: tile_size {
    type: number
    sql: ${TABLE}.tile_size ;;
  }

  measure: count {
    type: count
    drill_fields: [id, original_name, global_product_group_ref.count]
  }
}
