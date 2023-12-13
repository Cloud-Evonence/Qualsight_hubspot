view: email_event_status_change {
  sql_table_name: `hubspot.email_event_status_change` ;;
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
  dimension: bounced {
    type: yesno
    sql: ${TABLE}.bounced ;;
  }
  dimension: portal_subscription_status {
    type: string
    sql: ${TABLE}.portal_subscription_status ;;
  }
  dimension: requested_by {
    type: string
    sql: ${TABLE}.requested_by ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: subscriptions {
    type: string
    sql: ${TABLE}.subscriptions ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
