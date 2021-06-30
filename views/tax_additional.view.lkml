view: tax_additional {
  sql_table_name: potify_prod.tax_additional ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_applied_to_discounted_price {
    type: yesno
    sql: ${TABLE}.is_applied_to_discounted_price ;;
  }

  dimension: is_applied_to_nsdp {
    type: yesno
    sql: ${TABLE}.is_applied_to_nsdp ;;
  }

  dimension: is_applied_to_retail_price {
    type: yesno
    sql: ${TABLE}.is_applied_to_retail_price ;;
  }

  dimension: is_applied_to_sdp {
    type: yesno
    sql: ${TABLE}.is_applied_to_sdp ;;
  }

  dimension: is_applied_to_wholesale_price {
    type: yesno
    sql: ${TABLE}.is_applied_to_wholesale_price ;;
  }

  dimension: is_enabled {
    type: yesno
    sql: ${TABLE}.is_enabled ;;
  }

  dimension: is_included_city_local_tax {
    type: yesno
    sql: ${TABLE}.is_included_city_local_tax ;;
  }

  dimension: is_included_delivery_fee {
    type: yesno
    sql: ${TABLE}.is_included_delivery_fee ;;
  }

  dimension: is_included_excise_tax {
    type: yesno
    sql: ${TABLE}.is_included_excise_tax ;;
  }

  dimension: is_included_sales_tax {
    type: yesno
    sql: ${TABLE}.is_included_sales_tax ;;
  }

  dimension: mmj_rate {
    type: number
    sql: ${TABLE}.mmj_rate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: non_mmj_rate {
    type: number
    sql: ${TABLE}.non_mmj_rate ;;
  }

  dimension: tax_tier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_tier_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, tax_tier.id, tax_tier.name]
  }
}
