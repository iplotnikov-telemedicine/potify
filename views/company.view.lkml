view: company {
  sql_table_name: potify_prod.company ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: cell_phone {
    type: string
    sql: ${TABLE}.cell_phone ;;
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

  dimension: cultivation_price {
    type: number
    sql: ${TABLE}.cultivation_price ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: facebook {
    type: string
    sql: ${TABLE}.facebook ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: regular_price {
    type: number
    sql: ${TABLE}.regular_price ;;
  }

  dimension: skype {
    type: string
    sql: ${TABLE}.skype ;;
  }

  dimension: state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: twitter {
    type: string
    sql: ${TABLE}.twitter ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  dimension: work_phone {
    type: string
    sql: ${TABLE}.work_phone ;;
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
      id,
      name,
      city.id,
      city.name,
      city.full_name,
      state.id,
      state.name,
      state.fullname,
      zip.id,
      zip.name,
      county.id,
      county.name,
      appointment.count,
      doctor.count,
      office.count,
      recommendation.count,
      recommendation_to_company_sync.count
    ]
  }
}
