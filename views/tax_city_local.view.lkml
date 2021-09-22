view: tax_city_local {
  sql_table_name: potify_prod.tax_city_local ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_applied_based_on_delivery_address {
    type: yesno
    sql: ${TABLE}.is_applied_based_on_delivery_address ;;
  }

  dimension: is_applied_to_discounted_price {
    type: yesno
    sql: ${TABLE}.is_applied_to_discounted_price ;;
  }

  dimension: is_enabled {
    type: yesno
    sql: ${TABLE}.is_enabled ;;
  }

  dimension: is_included_delivery_fee {
    type: yesno
    sql: ${TABLE}.is_included_delivery_fee ;;
  }

  dimension: is_included_excise_tax {
    type: yesno
    sql: ${TABLE}.is_included_excise_tax ;;
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
