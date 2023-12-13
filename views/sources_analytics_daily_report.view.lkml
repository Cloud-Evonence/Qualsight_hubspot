view: sources_analytics_daily_report {
  sql_table_name: `hubspot.sources_analytics_daily_report` ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: bounce_rate {
    type: number
    sql: ${TABLE}.bounce_rate ;;
  }
  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }
  dimension: breakdown {
    type: string
    sql: ${TABLE}.breakdown ;;
  }
  dimension: contact_to_customer_rate {
    type: number
    sql: ${TABLE}.contact_to_customer_rate ;;
  }
  dimension: contacts {
    type: number
    sql: ${TABLE}.contacts ;;
  }
  dimension: contacts_per_pageview {
    type: number
    sql: ${TABLE}.contacts_per_pageview ;;
  }
  dimension: customers {
    type: number
    sql: ${TABLE}.customers ;;
  }
  dimension: customers_per_pageview {
    type: number
    sql: ${TABLE}.customers_per_pageview ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: leads {
    type: number
    sql: ${TABLE}.leads ;;
  }
  dimension: leads_per_view {
    type: number
    sql: ${TABLE}.leads_per_view ;;
  }
  dimension: marketing_qualified_leads {
    type: number
    sql: ${TABLE}.marketing_qualified_leads ;;
  }
  dimension: new_visitor_session_rate {
    type: number
    sql: ${TABLE}.new_visitor_session_rate ;;
  }
  dimension: opportunities {
    type: number
    sql: ${TABLE}.opportunities ;;
  }
  dimension: others {
    type: number
    sql: ${TABLE}.others ;;
  }
  dimension: pageviews_minus_exits {
    type: number
    sql: ${TABLE}.pageviews_minus_exits ;;
  }
  dimension: pageviews_per_session {
    type: number
    sql: ${TABLE}.pageviews_per_session ;;
  }
  dimension: raw_views {
    type: number
    sql: ${TABLE}.raw_views ;;
  }
  dimension: returning_visits {
    type: number
    sql: ${TABLE}.returning_visits ;;
  }
  dimension: sales_qualified_leads {
    type: number
    sql: ${TABLE}.sales_qualified_leads ;;
  }
  dimension: session_to_contact_rate {
    type: number
    sql: ${TABLE}.session_to_contact_rate ;;
  }
  dimension: standard_views {
    type: number
    sql: ${TABLE}.standard_views ;;
  }
  dimension: subscribers {
    type: number
    sql: ${TABLE}.subscribers ;;
  }
  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }
  dimension: time_per_session {
    type: number
    sql: ${TABLE}.time_per_session ;;
  }
  dimension: visitors {
    type: number
    sql: ${TABLE}.visitors ;;
  }
  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }
  measure: count {
    type: count
  }
}
