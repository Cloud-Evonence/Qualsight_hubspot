view: email_event_click {
  sql_table_name: `hubspot.email_event_click` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }
  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  dimension: referer {
    type: string
    sql: ${TABLE}.referer ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
