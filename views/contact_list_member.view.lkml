view: contact_list_member {
  sql_table_name: `hubspot.contact_list_member` ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension_group: added {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.added_at ;;
  }
  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
  }
  dimension: contact_list_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_list_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	contact_list.name,
	contact_list.id,
	contact.property_first_conversion_event_name,
	contact.id,
	contact.property_firstname,
	contact.property_lastname,
	contact.property_hs_email_last_email_name,
	contact.property_recent_conversion_event_name
	]
  }

}
