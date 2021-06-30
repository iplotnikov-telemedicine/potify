view: notification_recipients {
  sql_table_name: potify_prod.notification_recipients ;;

  dimension: notification_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.notification_id ;;
  }

  dimension: recipient_id {
    type: number
    sql: ${TABLE}.recipient_id ;;
  }

  measure: count {
    type: count
    drill_fields: [notification.id]
  }
}
