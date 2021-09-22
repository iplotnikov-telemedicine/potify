view: photo {
  sql_table_name: potify_prod.photo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }

  dimension: photo_collection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.photo_collection_id ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, photo_collection.id]
  }
}
