view: sessions_analytics_daily_report {
  sql_table_name: `hubspot.sessions_analytics_daily_report` ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: breakdown {
    type: string
    sql: ${TABLE}.breakdown ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: desktop {
    type: number
    sql: ${TABLE}.desktop ;;
  }
  dimension: direct_traffic {
    type: number
    sql: ${TABLE}.direct_traffic ;;
  }
  dimension: email_marketing {
    type: number
    sql: ${TABLE}.email_marketing ;;
  }
  dimension: mobile {
    type: number
    sql: ${TABLE}.mobile ;;
  }
  dimension: organic_search {
    type: number
    sql: ${TABLE}.organic_search ;;
  }
  dimension: other_campaigns {
    type: number
    sql: ${TABLE}.other_campaigns ;;
  }
  dimension: others {
    type: number
    sql: ${TABLE}.others ;;
  }
  dimension: paid_search {
    type: number
    sql: ${TABLE}.paid_search ;;
  }
  dimension: paid_social {
    type: number
    sql: ${TABLE}.paid_social ;;
  }
  dimension: referrals {
    type: number
    sql: ${TABLE}.referrals ;;
  }
  dimension: social_media {
    type: number
    sql: ${TABLE}.social_media ;;
  }
  measure: count {
    type: count
  }
}
