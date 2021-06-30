view: mb_company {
  sql_table_name: potify_prod.mb_company ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: allow_ordering_outside_of_business_hours {
    type: yesno
    sql: ${TABLE}.allow_ordering_outside_of_business_hours ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: is_allow_doorstep_delivery {
    type: yesno
    sql: ${TABLE}.is_allow_doorstep_delivery ;;
  }

  dimension: is_allow_scheduled_delivery {
    type: yesno
    sql: ${TABLE}.is_allow_scheduled_delivery ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: original_id {
    type: number
    sql: ${TABLE}.original_id ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
