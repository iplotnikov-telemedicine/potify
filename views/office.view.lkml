view: office {
  sql_table_name: potify_prod.office ;;
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

  dimension: business_name {
    type: string
    sql: ${TABLE}.business_name ;;
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

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: csz_id {
    type: number
    sql: ${TABLE}.csz_id ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
      business_name,
      name,
      city.id,
      city.name,
      city.full_name,
      state.id,
      state.name,
      state.fullname,
      zip.id,
      zip.name,
      company.id,
      company.name,
      appointment.count,
      recommendation.count,
      staff_offices_ref.count
    ]
  }
}
