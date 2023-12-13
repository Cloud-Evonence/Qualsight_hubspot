view: contact_property_history {
  sql_table_name: `hubspot.contact_property_history` ;;

  dimension: _fivetran_active {
    type: yesno
    sql: ${TABLE}._fivetran_active ;;
  }
  dimension_group: _fivetran_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_end ;;
  }
  dimension_group: _fivetran_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_start ;;
  }
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
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	name,
	contact.property_first_conversion_event_name,
	contact.id,
	contact.property_firstname,
	contact.property_lastname,
	contact.property_hs_email_last_email_name,
	contact.property_recent_conversion_event_name
	]
  }

}
