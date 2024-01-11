
view: conversion_rate {
  derived_table: {
    sql: SELECT ct.property_hs_marketable_status as ststus, con.page_url  AS contact_form_submission_page_url, COUNT(con.conversion_id)/SUM(ct.property_hs_analytics_num_visits)* 100 as conversion_rate,
      COUNT(con.conversion_id) as count_con_id,
      SUM(ct.property_hs_analytics_num_visits) as sum_visits
       from hubspot.contact_form_submission con
      LEFT JOIN hubspot.contact ct
      on  con.contact_id = ct.id
      group by con.page_url, ct.property_hs_marketable_status
      order by conversion_rate desc ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: contact_form_submission_page_url {
    type: string
    sql: ${TABLE}.contact_form_submission_page_url ;;
  }

  dimension: property_hs_marketable_status {
    type: yesno
    sql: ${TABLE}.property_hs_marketable_status ;;
  }

  dimension: conversion_rate {
    type: number
    value_format_name: percent_2
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
        contact_form_submission_page_url,
  conversion_rate,
  count_con_id,
  sum_visits,
  property_hs_marketable_status
    ]
  }
}
