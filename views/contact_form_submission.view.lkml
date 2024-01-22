view: contact_form_submission {
  sql_table_name: `hubspot.contact_form_submission` ;;

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
  dimension: conversion_id {
    type: string
    sql: ${TABLE}.conversion_id ;;
  }
  dimension: form_id {
    type: string
    sql: ${TABLE}.form_id ;;
  }
  dimension: page_id {
    type: string
    sql: ${TABLE}.page_id ;;
  }
  dimension: page_url {
    type: string
    sql: ${TABLE}.page_url ;;
  }
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  #dimension: google_page {
  #  type: string
  #  sql: CASE
  #        WHEN LOWER(${TABLE}.title) LIKE '%google%' THEN 'google'
  #        ELSE 'Others'
  #      END ;;
  #  label: "Google_page"
  #}


  #measure: conversion_count {
  #  type: count
  #  sql: ${TABLE}.conversion_id ;;
  #}



  measure: form_count {
    type: count
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
  contact.property_recent_conversion_event_name
  ]
  }

}
