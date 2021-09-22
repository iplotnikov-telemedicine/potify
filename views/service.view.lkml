view: service {
  sql_table_name: potify_prod.service ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: double_slot_price {
    type: number
    sql: ${TABLE}.double_slot_price ;;
  }

  dimension: exam_xml {
    type: string
    sql: ${TABLE}.exam_xml ;;
  }

  dimension: internal_name {
    type: string
    sql: ${TABLE}.internal_name ;;
  }

  dimension: is_main {
    type: yesno
    sql: ${TABLE}.is_main ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: quadruple_slot_price {
    type: number
    sql: ${TABLE}.quadruple_slot_price ;;
  }

  dimension: quintuple_slot_price {
    type: number
    sql: ${TABLE}.quintuple_slot_price ;;
  }

  dimension: service_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_category_id ;;
  }

  dimension: sextuple_slot_price {
    type: number
    sql: ${TABLE}.sextuple_slot_price ;;
  }

  dimension: slots_count {
    type: number
    sql: ${TABLE}.slots_count ;;
  }

  dimension: terms {
    type: string
    sql: ${TABLE}.terms ;;
  }

  dimension: triple_slot_price {
    type: number
    sql: ${TABLE}.triple_slot_price ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
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
      internal_name,
      service_category.id,
      service_category.name,
      service_category.internal_name,
      appointment.count,
      appointment_service_ref.count,
      doctor_service_ref.count,
      exam_preset.count,
      order_item.count,
      order_service_ref.count,
      promo_code_service_ref.count,
      service_diagnosed_condition_ref.count,
      service_intake_clause_ref.count,
      service_package_item.count,
      service_service_ref.count,
      service_symptom_category_ref.count
    ]
  }
}
