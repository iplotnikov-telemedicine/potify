view: presets {
  sql_table_name: potify_prod.presets ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: appointments_access {
    type: string
    sql: ${TABLE}.appointments_access ;;
  }

  dimension: brand_products_access {
    type: string
    sql: ${TABLE}.brand_products_access ;;
  }

  dimension: brand_products_publication {
    type: string
    sql: ${TABLE}.brand_products_publication ;;
  }

  dimension: brands_access {
    type: string
    sql: ${TABLE}.brands_access ;;
  }

  dimension: coupons_access {
    type: string
    sql: ${TABLE}.coupons_access ;;
  }

  dimension: delete_patients_access {
    type: string
    sql: ${TABLE}.delete_patients_access ;;
  }

  dimension: doctors_access {
    type: string
    sql: ${TABLE}.doctors_access ;;
  }

  dimension: medibook_offices_access {
    type: string
    sql: ${TABLE}.medibook_offices_access ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: orders_access {
    type: string
    sql: ${TABLE}.orders_access ;;
  }

  dimension: patients_access {
    type: string
    sql: ${TABLE}.patients_access ;;
  }

  dimension: pending_deals_access {
    type: string
    sql: ${TABLE}.pending_deals_access ;;
  }

  dimension: promo_balance_access {
    type: string
    sql: ${TABLE}.promo_balance_access ;;
  }

  dimension: review_reports_access {
    type: string
    sql: ${TABLE}.review_reports_access ;;
  }

  dimension: staffs_access {
    type: string
    sql: ${TABLE}.staffs_access ;;
  }

  dimension: strain_groups_access {
    type: string
    sql: ${TABLE}.strain_groups_access ;;
  }

  dimension: strains_access {
    type: string
    sql: ${TABLE}.strains_access ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
