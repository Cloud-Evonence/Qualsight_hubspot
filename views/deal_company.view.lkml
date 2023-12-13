view: deal_company {
  sql_table_name: `hubspot.deal_company` ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }
  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.deal_id ;;
  }
  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	company.property_company_id_c,
	company.property_first_conversion_event_name,
	company.property_name,
	company.property_recent_conversion_event_name,
	deal.deal_id,
	deal.property_dealname
	]
  }

}
