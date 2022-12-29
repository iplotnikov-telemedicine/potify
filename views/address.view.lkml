view: address {
  sql_table_name: potify_prod.address ;;
  drill_fields: [authorize_net_address_id]

  dimension: authorize_net_address_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.authorize_net_address_id ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: city_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.city_id ;;
  }

  dimension: county_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.county_id ;;
  }

  dimension: csz_id {
    type: number
    sql: ${TABLE}.csz_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_billing {
    type: yesno
    sql: ${TABLE}.is_billing ;;
  }

  dimension: is_shipping {
    type: yesno
    sql: ${TABLE}.is_shipping ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: patient_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.patient_id ;;
  }

  dimension: state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: zip_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.zip_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      authorize_net_address_id,
      city.id,
      city.name,
      city.full_name,
      state.id,
      state.name,
      state.fullname,
      zip.id,
      zip.name,
      patient.first_name,
      patient.last_name,
      patient.middle_name,
      patient.current_recommendation_doctor_name,
      patient.nickname,
      patient.merged_to_patient_id,
      county.id,
      county.name
    ]
  }
}
