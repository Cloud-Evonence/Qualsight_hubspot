view: form {
  sql_table_name: `hubspot.form` ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: css_class {
    type: string
    sql: ${TABLE}.css_class ;;
  }
  dimension: follow_up_id {
    type: string
    sql: ${TABLE}.follow_up_id ;;
  }
  dimension: form_type {
    type: string
    sql: ${TABLE}.form_type ;;
  }
  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }
  dimension: lead_nurturing_campaign_id {
    type: string
    sql: ${TABLE}.lead_nurturing_campaign_id ;;
  }
  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: notify_recipients {
    type: string
    sql: ${TABLE}.notify_recipients ;;
  }
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  dimension: redirect {
    type: string
    sql: ${TABLE}.redirect ;;
  }
  dimension: submit_text {
    type: string
    sql: ${TABLE}.submit_text ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
