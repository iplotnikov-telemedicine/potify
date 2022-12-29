view: county {
  sql_table_name: potify_prod.county ;;
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
      company.count,
      county_city_ref.count,
      county_zip_ref.count,
      location.count,
      mb_office.count,
      shop_order.count
    ]
  }
}
