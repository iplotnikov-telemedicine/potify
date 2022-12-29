view: email_newsletter {
  sql_table_name: potify_prod.email_newsletter ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: mandrill_template_name {
    type: string
    sql: ${TABLE}.mandrill_template_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}.template_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, template_name, mandrill_template_name, patient_email_newsletter_ref.count]
  }
}
