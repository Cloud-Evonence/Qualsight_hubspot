view: ticket_property_history {
  sql_table_name: `hubspot.ticket_property_history` ;;

  dimension: _fivetran_active {
    type: yesno
    sql: ${TABLE}._fivetran_active ;;
  }
  dimension_group: _fivetran_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_end ;;
  }
  dimension_group: _fivetran_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_start ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }
  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }
  dimension_group: timestamp_instant {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp_instant ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [name, ticket.id]
  }
}
