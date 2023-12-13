view: email_event_delivered {
  sql_table_name: `hubspot.email_event_delivered` ;;
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
  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }
  dimension: smtp_id {
    type: string
    sql: ${TABLE}.smtp_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
