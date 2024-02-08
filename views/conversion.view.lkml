
view: conversion {
  derived_table: {
    sql: SELECT
          ct.property_hs_marketable_status as status,
          con.title,
          COUNT(con.conversion_id)/SUM(ct.property_hs_analytics_num_visits) * 100 as conversion_rate,
          COUNT(con.conversion_id) as count_con_id,
          SUM(ct.property_hs_analytics_num_visits) as sum_visits
      FROM
          hubspot.contact_form_submission con
      LEFT JOIN
          hubspot.contact ct
      ON
          con.contact_id = ct.id
      ---WHERE
      ---    con.title LIKE '%Google%'
      GROUP BY
          ct.property_hs_marketable_status, con.title
      ORDER BY
          conversion_rate DESC ;;
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
  title,
  conversion_rate,
  count_con_id,
  sum_visits
    ]
  }
}
