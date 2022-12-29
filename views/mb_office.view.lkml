view: mb_office {
  sql_table_name: potify_prod.mb_office ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: about_us {
    type: string
    sql: ${TABLE}.about_us ;;
  }

  dimension: accepts_credit_cards {
    type: yesno
    sql: ${TABLE}.accepts_credit_cards ;;
  }

  dimension: accepts_debit_cards {
    type: yesno
    sql: ${TABLE}.accepts_debit_cards ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: adult_use_state_license_number {
    type: string
    sql: ${TABLE}.adult_use_state_license_number ;;
  }

  dimension: all_day_verification {
    type: yesno
    sql: ${TABLE}.all_day_verification ;;
  }

  dimension: alt_notification_phone {
    type: string
    sql: ${TABLE}.alt_notification_phone ;;
  }

  dimension: announcements {
    type: string
    sql: ${TABLE}.announcements ;;
  }

  dimension: atm {
    type: yesno
    sql: ${TABLE}.atm ;;
  }

  dimension: average_atmosphere_rating {
    type: number
    sql: ${TABLE}.average_atmosphere_rating ;;
  }

  dimension: average_bud_quality_rating {
    type: number
    sql: ${TABLE}.average_bud_quality_rating ;;
  }

  dimension: average_delivery_time {
    type: number
    sql: ${TABLE}.average_delivery_time ;;
  }

  dimension: average_delivery_time_rating {
    type: number
    sql: ${TABLE}.average_delivery_time_rating ;;
  }

  dimension: average_knowledge_rating {
    type: number
    sql: ${TABLE}.average_knowledge_rating ;;
  }

  dimension: average_patient_experience_rating {
    type: number
    sql: ${TABLE}.average_patient_experience_rating ;;
  }

  dimension: average_rating {
    type: number
    sql: ${TABLE}.average_rating ;;
  }

  dimension: average_recommended_rating {
    type: number
    sql: ${TABLE}.average_recommended_rating ;;
  }

  dimension: average_staff_rating {
    type: number
    sql: ${TABLE}.average_staff_rating ;;
  }

  dimension: average_wait_time_rating {
    type: number
    sql: ${TABLE}.average_wait_time_rating ;;
  }

  dimension: business_info {
    type: string
    sql: ${TABLE}.business_info ;;
  }

  dimension: business_slogan {
    type: string
    sql: ${TABLE}.business_slogan ;;
  }

  dimension: cashback {
    type: number
    sql: ${TABLE}.cashback ;;
  }

  dimension: city_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.city_id ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension: collection_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.collection_group_id ;;
  }

  dimension: collection_id {
    type: number
    sql: ${TABLE}.collection_id ;;
  }

  dimension: country_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.country_id ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: county_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.county_id ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: cover_id {
    type: number
    sql: ${TABLE}.cover_id ;;
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: csz_id {
    type: number
    sql: ${TABLE}.csz_id ;;
  }

  dimension: disability_discount {
    type: yesno
    sql: ${TABLE}.disability_discount ;;
  }

  dimension: eighteen_plus {
    type: yesno
    sql: ${TABLE}.eighteen_plus ;;
  }

  dimension: enable_auto_cancel_order {
    type: yesno
    sql: ${TABLE}.enable_auto_cancel_order ;;
  }

  dimension: enable_loyalty_program {
    type: yesno
    sql: ${TABLE}.enable_loyalty_program ;;
  }

  dimension: facebook {
    type: string
    sql: ${TABLE}.facebook ;;
  }

  dimension: featured {
    type: yesno
    sql: ${TABLE}.featured ;;
  }

  dimension: featured_products {
    type: string
    sql: ${TABLE}.featured_products ;;
  }

  dimension: first_time_customers {
    type: string
    sql: ${TABLE}.first_time_customers ;;
  }

  dimension: handicap_access {
    type: yesno
    sql: ${TABLE}.handicap_access ;;
  }

  dimension: instagram {
    type: string
    sql: ${TABLE}.instagram ;;
  }

  dimension: is_accept_order {
    type: yesno
    sql: ${TABLE}.is_accept_order ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_allow_delivery {
    type: yesno
    sql: ${TABLE}.is_allow_delivery ;;
  }

  dimension: is_allow_mail_delivery {
    type: yesno
    sql: ${TABLE}.is_allow_mail_delivery ;;
  }

  dimension: is_allow_pickup {
    type: yesno
    sql: ${TABLE}.is_allow_pickup ;;
  }

  dimension: is_alt_notification_phone_sms_enabled {
    type: yesno
    sql: ${TABLE}.is_alt_notification_phone_sms_enabled ;;
  }

  dimension: is_free_delivery {
    type: yesno
    sql: ${TABLE}.is_free_delivery ;;
  }

  dimension: is_notification_phone_calls_enabled {
    type: yesno
    sql: ${TABLE}.is_notification_phone_calls_enabled ;;
  }

  dimension: is_notification_phone_sms_enabled {
    type: yesno
    sql: ${TABLE}.is_notification_phone_sms_enabled ;;
  }

  dimension: is_using_collection {
    type: yesno
    sql: ${TABLE}.is_using_collection ;;
  }

  dimension: lab_tested {
    type: yesno
    sql: ${TABLE}.lab_tested ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: logo_id {
    type: number
    sql: ${TABLE}.logo_id ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: lounge {
    type: yesno
    sql: ${TABLE}.lounge ;;
  }

  dimension: md5_hash {
    type: string
    sql: ${TABLE}.md5_hash ;;
  }

  dimension: medibook_company_id {
    type: number
    sql: ${TABLE}.medibook_company_id ;;
  }

  dimension: medical {
    type: yesno
    sql: ${TABLE}.medical ;;
  }

  dimension: medical_state_license_number {
    type: string
    sql: ${TABLE}.medical_state_license_number ;;
  }

  dimension: menu_items {
    type: string
    sql: ${TABLE}.menu_items ;;
  }

  dimension: multiple_locations {
    type: yesno
    sql: ${TABLE}.multiple_locations ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: need_yelp_parse {
    type: yesno
    sql: ${TABLE}.need_yelp_parse ;;
  }

  dimension: notification_phone {
    type: string
    sql: ${TABLE}.notification_phone ;;
  }

  dimension: offers_physical_cards {
    type: yesno
    sql: ${TABLE}.offers_physical_cards ;;
  }

  dimension: open_now {
    type: yesno
    sql: ${TABLE}.open_now ;;
  }

  dimension: original_id {
    type: number
    sql: ${TABLE}.original_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: photo_collection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.photo_collection_id ;;
  }

  dimension: potify_payment_cash {
    type: yesno
    sql: ${TABLE}.potify_payment_cash ;;
  }

  dimension: potify_payment_credit {
    type: yesno
    sql: ${TABLE}.potify_payment_credit ;;
  }

  dimension: potify_payment_debit {
    type: yesno
    sql: ${TABLE}.potify_payment_debit ;;
  }

  dimension: price_new_cultivation {
    type: number
    sql: ${TABLE}.price_new_cultivation ;;
  }

  dimension: price_new_regular {
    type: number
    sql: ${TABLE}.price_new_regular ;;
  }

  dimension: price_renewal_cultivation {
    type: number
    sql: ${TABLE}.price_renewal_cultivation ;;
  }

  dimension: price_renewal_regular {
    type: number
    sql: ${TABLE}.price_renewal_regular ;;
  }

  dimension: price_service_package {
    type: number
    sql: ${TABLE}.price_service_package ;;
  }

  dimension: recreational {
    type: yesno
    sql: ${TABLE}.recreational ;;
  }

  dimension: review_count {
    type: number
    sql: ${TABLE}.review_count ;;
  }

  dimension: schedule_today {
    type: yesno
    sql: ${TABLE}.schedule_today ;;
  }

  dimension: security_guard {
    type: yesno
    sql: ${TABLE}.security_guard ;;
  }

  dimension: selling_type {
    type: string
    sql: ${TABLE}.selling_type ;;
  }

  dimension: seo_description {
    type: string
    sql: ${TABLE}.seo_description ;;
  }

  dimension: seo_keywords {
    type: string
    sql: ${TABLE}.seo_keywords ;;
  }

  dimension: seo_title {
    type: string
    sql: ${TABLE}.seo_title ;;
  }

  dimension: service_package_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.service_package_id ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: support_phone {
    type: string
    sql: ${TABLE}.support_phone ;;
  }

  dimension: threshold {
    type: number
    sql: ${TABLE}.threshold ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: twenty_one_plus {
    type: yesno
    sql: ${TABLE}.twenty_one_plus ;;
  }

  dimension: twitter {
    type: string
    sql: ${TABLE}.twitter ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: veterans_discount {
    type: yesno
    sql: ${TABLE}.veterans_discount ;;
  }

  dimension: walk_ins {
    type: yesno
    sql: ${TABLE}.walk_ins ;;
  }

  dimension: wallet_sized_authorizations {
    type: yesno
    sql: ${TABLE}.wallet_sized_authorizations ;;
  }

  dimension: wheelchair_accessible {
    type: yesno
    sql: ${TABLE}.wheelchair_accessible ;;
  }

  dimension: yelp {
    type: string
    sql: ${TABLE}.yelp ;;
  }

  dimension: youtube {
    type: string
    sql: ${TABLE}.youtube ;;
  }

  dimension: zip_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.zip_id ;;
  }

  dimension: zip_number {
    type: string
    sql: ${TABLE}.zip_number ;;
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
      city_name,
      county_name,
      country_name,
      state_name,
      service_package.id,
      service_package.name,
      service_package.internal_name,
      city.id,
      city.name,
      city.full_name,
      county.id,
      county.name,
      state.id,
      state.name,
      state.fullname,
      zip.id,
      zip.name,
      photo_collection.id,
      country.id,
      country.name,
      country.short_name,
      collection_group.id,
      collection_group.name
    ]
  }
}
