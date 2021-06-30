view: tax_patient_type_config {
  sql_table_name: potify_prod.tax_patient_type_config ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: patient_type {
    type: string
    sql: ${TABLE}.patient_type ;;
  }

  dimension: tax_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_config_id ;;
  }

  dimension: tax_tier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_tier_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, tax_config.id, tax_tier.id, tax_tier.name]
  }
}
