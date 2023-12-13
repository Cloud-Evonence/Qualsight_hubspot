view: email_subscription_change {
  sql_table_name: `hubspot.email_subscription_change` ;;

  dimension: _fivetran_id {
    type: string
    sql: ${TABLE}._fivetran_id ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: caused_by_event_id {
    type: string
    sql: ${TABLE}.caused_by_event_id ;;
  }
  dimension: change {
    type: string
    sql: ${TABLE}.change ;;
  }
  dimension: change_type {
    type: string
    sql: ${TABLE}.change_type ;;
  }
  dimension: email_subscription_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.email_subscription_id ;;
  }
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  dimension: recipient {
    type: string
    sql: ${TABLE}.recipient ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  measure: count {
    type: count
    drill_fields: [email_subscription.name, email_subscription.id]
  }
}
