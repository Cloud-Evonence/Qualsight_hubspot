view: email_subscription {
  sql_table_name: `hubspot.email_subscription` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, email_subscription_change.count]
  }
}
