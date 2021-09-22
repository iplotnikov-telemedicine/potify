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
