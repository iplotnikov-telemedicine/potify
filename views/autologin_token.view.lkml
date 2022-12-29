view: autologin_token {
  sql_table_name: potify_prod.autologin_token ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: fos_user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.fos_user_id ;;
  }

  dimension: reusable {
    type: yesno
    sql: ${TABLE}.reusable ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  measure: count {
    type: count
    drill_fields: [id, fos_user.id, fos_user.username]
  }
}
