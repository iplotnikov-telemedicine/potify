view: zip {
  sql_table_name: potify_prod.zip ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: country_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.country_id ;;
  }

  dimension: max_x {
    type: number
    sql: ${TABLE}.max_x ;;
  }

  dimension: max_y {
    type: number
    sql: ${TABLE}.max_y ;;
  }

  dimension: min_x {
    type: number
    sql: ${TABLE}.min_x ;;
  }

  dimension: min_y {
    type: number
    sql: ${TABLE}.min_y ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.state_id ;;
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
      state.id,
      state.name,
      state.fullname,
      country.id,
      country.name,
      country.short_name,
      address.count,
      city_zip_ref.count,
      company.count,
      county_zip_ref.count,
      location.count,
      mb_office.count,
      office.count,
      shop_order.count
    ]
  }
}
