view: deal_contact {
  sql_table_name: `hubspot.deal_contact` ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
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
	contact.property_first_conversion_event_name,
	contact.id,
	contact.property_firstname,
	contact.property_lastname,
	contact.property_hs_email_last_email_name,
	contact.property_recent_conversion_event_name,
	deal.deal_id,
	deal.property_dealname
	]
  }

}
