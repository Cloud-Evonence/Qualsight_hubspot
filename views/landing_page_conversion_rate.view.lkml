
view: landing_page_conversion_rate {
  derived_table: {
    sql: SELECT ct.property_hs_marketable_status as status, con.title, con.page_url  AS contact_form_submission_page_url, COUNT(con.conversion_id)/SUM(ct.property_hs_analytics_num_visits)* 100 as conversion_rate,
            COUNT(con.conversion_id) as count_con_id,
            SUM(ct.property_hs_analytics_num_visits) as sum_visits
             from hubspot.contact_form_submission con
            LEFT JOIN hubspot.contact ct
            on  con.contact_id = ct.id
            group by con.page_url, ct.property_hs_marketable_status, con.title
            order by conversion_rate desc  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: contact_form_submission_page_url {
    type: string
    sql: ${TABLE}.contact_form_submission_page_url ;;
  }

  dimension: conversion_rate {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.conversion_rate ;;
  }

  dimension: count_con_id {
    type: number
    sql: ${TABLE}.count_con_id ;;
  }

  dimension: sum_visits {
    type: number
    sql: ${TABLE}.sum_visits ;;
  }

  set: detail {
    fields: [
        status,
  contact_form_submission_page_url,
  conversion_rate,
  count_con_id,
  title,
  sum_visits
    ]
  }
}
