view: tax_sales_rate {
  sql_table_name: potify_prod.tax_sales_rate ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_approved {
    type: yesno
    sql: ${TABLE}.is_approved ;;
  }

  dimension: location_key {
    type: string
    sql: ${TABLE}.location_key ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.location_name ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: mmj_rate {
    type: number
    sql: ${TABLE}.mmj_rate ;;
  }

  dimension: non_mmj_rate {
    type: number
    sql: ${TABLE}.non_mmj_rate ;;
  }

  dimension: sales_tax_id {
    type: number
    sql: ${TABLE}.sales_tax_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, location_name]
  }
}
