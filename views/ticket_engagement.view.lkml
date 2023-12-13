view: ticket_engagement {
  sql_table_name: `hubspot.ticket_engagement` ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }
  dimension: engagement_type {
    type: string
    sql: ${TABLE}.engagement_type ;;
  }
  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }
  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }
  measure: count {
    type: count
    drill_fields: [engagement.id, ticket.id]
  }
}
