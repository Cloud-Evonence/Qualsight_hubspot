view: email_campaign {
  sql_table_name: `hubspot.email_campaign` ;;
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
  dimension: app_id {
    type: number
    sql: ${TABLE}.app_id ;;
  }
  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }
  dimension: content_id {
    type: number
    sql: ${TABLE}.content_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }


  dimension: num_included {
    type: number
    sql: ${TABLE}.num_included ;;
  }
  dimension: num_queued {
    type: number
    sql: ${TABLE}.num_queued ;;
  }
  dimension: sub_type {
    type: string
    sql: ${TABLE}.sub_type ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
    drill_fields: [id, app_name, name, email_event.count]
  }
}
