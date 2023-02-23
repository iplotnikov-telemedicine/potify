connection: "potify"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/dashboards/*.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: shop_order {

  join: mb_office {
    relationship: many_to_one
    sql_on: ${shop_order.medibook_office_id} = ${mb_office.id} ;;
  }

  join: mb_company {
    relationship: many_to_one
    sql_on: ${mb_office.medibook_company_id} = ${mb_company.id} ;;
  }
}


explore: shop_cart_item {

  access_filter: {
    field: mb_company.original_id
    user_attribute: allowed_customers
  }

  join: shop_cart {
    type: inner
    relationship: many_to_one
    sql_on: ${shop_cart_item.shop_cart_id} = ${shop_cart.id} ;;
  }

  join: mb_office {
    type: inner
    relationship: many_to_one
    sql_on: ${shop_cart.medibook_office_id} = ${mb_office.id} ;;
  }

  join: mb_company {
    type: inner
    relationship: many_to_one
    sql_on: ${mb_office.medibook_company_id} = ${mb_company.id} ;;
  }

  join: patient {
    type: inner
    relationship: many_to_one
    sql_on: ${shop_cart.patient_id} = ${patient.id} ;;
  }

  join: fos_user {
    type: inner
    relationship: many_to_one
    sql_on: ${patient.fos_user_id} = ${fos_user.id} ;;
  }

  join: product {
    type: inner
    relationship: many_to_one
    sql_on: ${shop_cart_item.product_id} = ${product.id} ;;
  }

}


explore: shop_order_item {

  join: shop_order {
    type: inner
    relationship: many_to_one
    sql_on: ${shop_order_item.shop_order_id} = ${shop_order.id} ;;
  }

  join: mb_office {
    type: inner
    relationship: many_to_one
    sql_on: ${shop_order.medibook_office_id} = ${mb_office.id} ;;
  }

  join: mb_company {
    type: inner
    relationship: many_to_one
    sql_on: ${mb_office.medibook_company_id} = ${mb_company.id} ;;
  }

  join: patient {
    type: inner
    relationship: many_to_one
    sql_on: ${shop_order.patient_id} = ${patient.id} ;;
  }

  join: product {
    type: inner
    relationship: many_to_one
    sql_on: ${shop_order_item.product_id} = ${product.id} ;;
  }

  join: brand_product {
    type: inner
    relationship: many_to_one
    sql_on: ${product.brand_product_id} = ${brand_product.id} ;;
  }

  join: brand {
    type: inner
    relationship: many_to_one
    sql_on: ${brand_product.brand_id} = ${brand.id} ;;
  }

  join: product_categories {
    type: inner
    from: product_categories
    relationship: many_to_one
    sql_on: ${product.category_id} = ${product_categories.id} ;;
  }

  join: product_categories_1 {
    from: product_categories
    relationship: many_to_one
    sql_on: ${product_categories.parent_id} = ${product_categories_1.id} ;;
  }

  join: product_categories_2 {
    from: product_categories
    relationship: many_to_one
    sql_on: ${product_categories_1.parent_id} = ${product_categories_2.id} ;;
  }

  join: product_categories_3 {
    from: product_categories
    relationship: many_to_one
    sql_on: ${product_categories_2.parent_id} = ${product_categories_3.id} ;;
  }

  join: product_categories_4 {
    from: product_categories
    relationship: many_to_one
    sql_on: ${product_categories_3.parent_id} = ${product_categories_4.id} ;;
  }

}


explore: brand_product {

  join: brand {
    relationship: many_to_one
    sql_on: ${brand_product.brand_id} = ${brand.id} ;;
  }

  join: creator {
    from: fos_user
    relationship: many_to_one
    sql_on: ${brand_product.created_by} = ${creator.id} ;;
  }

  join: updater {
    from: fos_user
    relationship: many_to_one
    sql_on: ${brand_product.updated_by} = ${creator.id} ;;
  }
}

explore: patient {
  sql_always_where:
    ${patient.checked_documents_by_user} IS NOT NULL
    {% if patient.patient_doc_checked_time_filter._in_query %}
      AND (
        (${patient.document_checked_time} between {% date_start patient_doc_checked_time_filter %}
          and {% date_end patient_doc_checked_time_filter %})
        OR (${recommendation.checked_time} between {% date_start patient_doc_checked_time_filter %}
          and {% date_end patient_doc_checked_time_filter %})
      )
    {% endif %} ;;

  join: main_document_checker {
    from: fos_user
    relationship: many_to_one
    sql_on: ${patient.checked_documents_by_user} = ${main_document_checker.id} ;;
  }

  join: recommendation {
    relationship: many_to_one
    sql_on: ${recommendation.patient_id} = ${patient.id} ;;
  }

  join: recommendation_checker {
    from: fos_user
    relationship: many_to_one
    sql_on: ${recommendation.checked_by_user} = ${recommendation_checker.id} ;;
  }
}
