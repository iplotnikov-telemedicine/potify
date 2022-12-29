view: deal {
  sql_table_name: potify_prod.deal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: barcode {
    type: string
    sql: ${TABLE}.barcode ;;
  }

  dimension: claim_count {
    type: number
    sql: ${TABLE}.claim_count ;;
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

  dimension: deleted {
    type: yesno
    sql: ${TABLE}.deleted ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: discount_type {
    type: number
    sql: ${TABLE}.discount_type ;;
  }

  dimension_group: ended {
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
    sql: ${TABLE}.ended_at ;;
  }

  dimension: first_time_patient {
    type: yesno
    sql: ${TABLE}.first_time_patient ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  dimension: medibook_office_id {
    type: number
    sql: ${TABLE}.medibook_office_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: original_id {
    type: number
    sql: ${TABLE}.original_id ;;
  }

  dimension: show_friday {
    type: yesno
    sql: ${TABLE}.show_friday ;;
  }

  dimension: show_monday {
    type: yesno
    sql: ${TABLE}.show_monday ;;
  }

  dimension: show_saturday {
    type: yesno
    sql: ${TABLE}.show_saturday ;;
  }

  dimension: show_sunday {
    type: yesno
    sql: ${TABLE}.show_sunday ;;
  }

  dimension: show_thursday {
    type: yesno
    sql: ${TABLE}.show_thursday ;;
  }

  dimension: show_tuesday {
    type: yesno
    sql: ${TABLE}.show_tuesday ;;
  }

  dimension: show_wednesday {
    type: yesno
    sql: ${TABLE}.show_wednesday ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}.started_at ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
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
    drill_fields: [id, name, deal_deal_ref.count, patient_deal_ref.count]
  }
}
