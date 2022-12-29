view: discount_patient_group_ref {
  sql_table_name: potify_prod.discount_patient_group_ref ;;

  dimension: discount_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.discount_id ;;
  }

  dimension: patient_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_group_id ;;
  }

  measure: count {
    type: count
    drill_fields: [discount.id, discount.name, discount.display_name, patient_group.id, patient_group.name]
  }
}
