view: marketing_email_contact {
  sql_table_name: `hubspot.marketing_email_contact` ;;

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
  dimension: is_contact_included {
    type: yesno
    sql: ${TABLE}.is_contact_included ;;
  }
  dimension: marketing_email_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.marketing_email_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	marketing_email.id,
	marketing_email.name,
	marketing_email.author_name,
	marketing_email.subscription_name,
	marketing_email.from_name,
	marketing_email.campaign_name,
	marketing_email.published_by_name,
	contact.property_first_conversion_event_name,
	contact.id,
	contact.property_firstname,
	contact.property_lastname,
	contact.property_hs_email_last_email_name,
	contact.property_recent_conversion_event_name
	]
  }

}
