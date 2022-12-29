view: discount_patient_type_ref {
  sql_table_name: potify_prod.discount_patient_type_ref ;;

  dimension: discount_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.discount_id ;;
  }

  dimension: patient_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [discount.id, discount.name, discount.display_name, patient_type.id, patient_type.name]
  }
}
