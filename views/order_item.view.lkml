view: order_item {
  sql_table_name: potify_prod.order_item ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: count_order_item {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_type {
    type: number
    sql: ${TABLE}.discount_type ;;
  }

  dimension: discount_value {
    type: number
    sql: ${TABLE}.discount_value ;;
  }

  dimension: is_double_slot {
    type: yesno
    sql: ${TABLE}.is_double_slot ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: paid_amount {
    type: number
    sql: ${TABLE}.paid_amount ;;
  }

  dimension: recommendation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.recommendation_id ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_id ;;
  }

  dimension: service_package_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_package_id ;;
  }

  dimension: service_package_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_package_item_id ;;
  }

  dimension: slots_count {
    type: number
    sql: ${TABLE}.slots_count ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      service.id,
      service.name,
      service.internal_name,
      order.id,
      order.billing_cardholder_first_name,
      order.billing_cardholder_last_name,
      service_package.id,
      service_package.name,
      service_package.internal_name,
      service_package_item.id,
      recommendation.id,
      recommendation.doctor_first_name,
      recommendation.doctor_last_name,
      recommendation.patient_first_name,
      recommendation.patient_middle_name,
      recommendation.patient_last_name,
      recommendation.medibook_office_name,
      recommendation.medibook_company_name
    ]
  }
}
