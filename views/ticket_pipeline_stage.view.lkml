view: ticket_pipeline_stage {
  sql_table_name: `hubspot.ticket_pipeline_stage` ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: display_order {
    type: number
    sql: ${TABLE}.display_order ;;
  }
  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.is_closed ;;
  }
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }
  dimension: pipeline_id {
    type: string
    sql: ${TABLE}.pipeline_id ;;
  }
  dimension: stage_id {
    type: string
    sql: ${TABLE}.stage_id ;;
  }
  dimension: ticket_state {
    type: string
    sql: ${TABLE}.ticket_state ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: write_permissions {
    type: string
    sql: ${TABLE}.write_permissions ;;
  }
  measure: count {
    type: count
  }
}
