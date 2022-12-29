view: tax_excise {
  sql_table_name: potify_prod.tax_excise ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: count_from_cost {
    type: yesno
    sql: ${TABLE}.count_from_cost ;;
  }

  dimension: is_applied_to_discounted_sdp {
    type: yesno
    sql: ${TABLE}.is_applied_to_discounted_sdp ;;
  }

  dimension: is_enabled {
    type: yesno
    sql: ${TABLE}.is_enabled ;;
  }

  dimension: is_included_city_local_tax_sdp {
    type: yesno
    sql: ${TABLE}.is_included_city_local_tax_sdp ;;
  }

  dimension: is_included_delivery_fee_nsdp {
    type: yesno
    sql: ${TABLE}.is_included_delivery_fee_nsdp ;;
  }

  dimension: is_included_delivery_fee_sdp {
    type: yesno
    sql: ${TABLE}.is_included_delivery_fee_sdp ;;
  }

  dimension: rate_nsdp {
    type: number
    sql: ${TABLE}.rate_nsdp ;;
  }

  dimension: rate_sdp {
    type: number
    sql: ${TABLE}.rate_sdp ;;
  }

  dimension: tax_tier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_tier_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, tax_tier.id, tax_tier.name]
  }
}
