view: email_event_deferred {
  sql_table_name: `hubspot.email_event_deferred` ;;
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
  dimension: attempt {
    type: number
    sql: ${TABLE}.attempt ;;
  }
  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
