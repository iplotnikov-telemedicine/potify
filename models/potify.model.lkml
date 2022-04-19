connection: "potify"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


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

  sql_always_where: ${patient.checked_documents_by_user} != NULL ;;

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
