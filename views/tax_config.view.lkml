view: tax_config {
  sql_table_name: potify_prod.tax_config ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_include_taxes_for_free_delivery_calculation {
    type: yesno
    sql: ${TABLE}.is_include_taxes_for_free_delivery_calculation ;;
  }

  dimension: is_include_taxes_for_minimum_order_calculation {
    type: yesno
    sql: ${TABLE}.is_include_taxes_for_minimum_order_calculation ;;
  }

  dimension: is_tax_included {
    type: yesno
    sql: ${TABLE}.is_tax_included ;;
  }

  dimension: is_taxable {
    type: yesno
    sql: ${TABLE}.is_taxable ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, tax_patient_type_config.count]
  }
}
