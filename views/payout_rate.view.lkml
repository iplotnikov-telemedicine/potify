view: payout_rate {
  sql_table_name: potify_prod.payout_rate ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cultivation_new_recommendation_rate {
    type: number
    sql: ${TABLE}.cultivation_new_recommendation_rate ;;
  }

  dimension: cultivation_renewal_recommendation_rate {
    type: number
    sql: ${TABLE}.cultivation_renewal_recommendation_rate ;;
  }

  dimension: doctor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.doctor_id ;;
  }

  dimension: new_recommendation_rate {
    type: number
    sql: ${TABLE}.new_recommendation_rate ;;
  }

  dimension: other_10_rate {
    type: number
    sql: ${TABLE}.other_10_rate ;;
  }

  dimension: other_30_rate {
    type: number
    sql: ${TABLE}.other_30_rate ;;
  }

  dimension: other_50_rate {
    type: number
    sql: ${TABLE}.other_50_rate ;;
  }

  dimension: renewal_recommendation_rate {
    type: number
    sql: ${TABLE}.renewal_recommendation_rate ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      doctor.id,
      doctor.first_name,
      doctor.last_name,
      doctor.middle_name,
      doctor.count
    ]
  }
}
