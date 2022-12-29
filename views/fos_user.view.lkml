view: fos_user {
  sql_table_name: potify_prod.fos_user ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: chat_password {
    type: string
    sql: ${TABLE}.chat_password ;;
  }

  dimension: confirmation_token {
    type: string
    sql: ${TABLE}.confirmation_token ;;
  }

  dimension: country_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.country_id ;;
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
    sql: ${TABLE}.created ;;
  }

  dimension_group: credentials_expire {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.credentials_expire_at ;;
  }

  dimension: credentials_expired {
    type: yesno
    sql: ${TABLE}.credentials_expired ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: device_type {
    type: number
    sql: ${TABLE}.device_type ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_canonical {
    type: string
    sql: ${TABLE}.email_canonical ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension: expired {
    type: yesno
    sql: ${TABLE}.expired ;;
  }

  dimension_group: expires {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expires_at ;;
  }

  dimension: facebook_access_token {
    type: string
    sql: ${TABLE}.facebook_access_token ;;
  }

  dimension: facebook_email {
    type: string
    sql: ${TABLE}.facebook_email ;;
  }

  dimension: facebook_id {
    type: string
    sql: ${TABLE}.facebook_id ;;
  }

  dimension: google_access_token {
    type: string
    sql: ${TABLE}.google_access_token ;;
  }

  dimension: google_email {
    type: string
    sql: ${TABLE}.google_email ;;
  }

  dimension: google_id {
    type: string
    sql: ${TABLE}.google_id ;;
  }

  dimension: is_bounced {
    type: yesno
    sql: ${TABLE}.is_bounced ;;
  }

  dimension: is_from_facebook {
    type: yesno
    sql: ${TABLE}.is_from_facebook ;;
  }

  dimension: is_from_google {
    type: yesno
    sql: ${TABLE}.is_from_google ;;
  }

  dimension_group: last_login {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_login ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.locked ;;
  }

  dimension: medical_type {
    type: number
    sql: ${TABLE}.medical_type ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: password_cached {
    type: string
    sql: ${TABLE}.password_cached ;;
  }

  dimension_group: password_requested {
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
    sql: ${TABLE}.password_requested_at ;;
  }

  dimension: salt {
    type: string
    sql: ${TABLE}.salt ;;
  }

  dimension: state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
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
    sql: ${TABLE}.updated ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: username_canonical {
    type: string
    sql: ${TABLE}.username_canonical ;;
  }

  dimension: usertype {
    type: number
    sql: ${TABLE}.usertype ;;
  }

  dimension: zone_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.zone_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      username,
      zone.id,
      zone.zone_name,
      zone.name,
      country.id,
      country.name,
      country.short_name,
      state.id,
      state.name,
      state.fullname,
      autologin_token.count,
      doctor.count,
      patient.count,
      staff.count
    ]
  }
}
