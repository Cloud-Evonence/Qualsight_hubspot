view: email_event_suppressed {
  sql_table_name: `hubspot.email_event_suppressed` ;;
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
  dimension: bcc {
    type: string
    sql: ${TABLE}.bcc ;;
  }
  dimension: cc {
    type: string
    sql: ${TABLE}.cc ;;
  }
  dimension: email_campaign_group_id {
    type: string
    sql: ${TABLE}.email_campaign_group_id ;;
  }
  dimension: from {
    type: string
    sql: ${TABLE}.`from` ;;
  }
  dimension: reply_to {
    type: string
    sql: ${TABLE}.reply_to ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
