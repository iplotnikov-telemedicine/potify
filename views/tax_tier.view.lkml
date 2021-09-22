view: tax_tier {
  sql_table_name: potify_prod.tax_tier ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
      tax_additional.count,
      tax_city_local.count,
      tax_excise.count,
      tax_patient_type_config.count,
      tax_sales.count
    ]
  }
}
