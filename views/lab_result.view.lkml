view: lab_result {
  sql_table_name: potify_prod.lab_result ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cbd {
    type: number
    sql: ${TABLE}.cbd ;;
  }

  dimension: cbg {
    type: number
    sql: ${TABLE}.cbg ;;
  }

  dimension: cbn {
    type: number
    sql: ${TABLE}.cbn ;;
  }

  dimension: indica {
    type: number
    sql: ${TABLE}.indica ;;
  }

  dimension: measurement {
    type: number
    sql: ${TABLE}.measurement ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: sativa {
    type: number
    sql: ${TABLE}.sativa ;;
  }

  dimension_group: tested {
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
    sql: ${TABLE}.tested_at ;;
  }

  dimension: thc {
    type: number
    sql: ${TABLE}.thc ;;
  }

  dimension: thcv {
    type: number
    sql: ${TABLE}.thcv ;;
  }

  measure: count {
    type: count
    drill_fields: [id, product.name, product.brand_product_id]
  }
}
