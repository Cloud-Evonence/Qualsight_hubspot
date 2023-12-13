view: marketing_email_contact_list {
  sql_table_name: `hubspot.marketing_email_contact_list` ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: contact_list_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_list_id ;;
  }
  dimension: is_mailing_list_included {
    type: yesno
    sql: ${TABLE}.is_mailing_list_included ;;
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
	contact_list.name,
	contact_list.id
	]
  }

}
