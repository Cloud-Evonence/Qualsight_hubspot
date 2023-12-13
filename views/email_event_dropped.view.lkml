view: email_event_dropped {
  sql_table_name: `hubspot.email_event_dropped` ;;
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
  dimension: drop_message {
    type: string
    sql: ${TABLE}.drop_message ;;
  }
  dimension: drop_reason {
    type: string
    sql: ${TABLE}.drop_reason ;;
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
