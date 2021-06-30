view: deal_deal_ref {
  sql_table_name: potify_prod.deal_deal_ref ;;

  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.deal_id ;;
  }

  dimension: related_deal_id {
    type: number
    sql: ${TABLE}.related_deal_id ;;
  }

  measure: count {
    type: count
    drill_fields: [deal.id, deal.name]
  }
}
