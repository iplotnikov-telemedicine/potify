view: state {
  sql_table_name: potify_prod.state ;;
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

  dimension: fullname {
    type: string
    sql: ${TABLE}.fullname ;;
  }

  dimension: is_recreational {
    type: yesno
    sql: ${TABLE}.is_recreational ;;
  }

  dimension: min_age {
    type: number
    sql: ${TABLE}.min_age ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
      fullname,
      country.id,
      country.name,
      country.short_name,
      address.count,
      brand_product_state.count,
      brand_state.count,
      caregiver.count,
      city.count,
      company.count,
      county.count,
      doctor.count,
      fos_user.count,
      location.count,
      mb_office.count,
      office.count,
      shop_order.count,
      zip.count
    ]
  }
}
