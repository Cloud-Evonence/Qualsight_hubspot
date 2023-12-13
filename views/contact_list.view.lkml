view: contact_list {
  sql_table_name: `hubspot.contact_list` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
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
  dimension: deleteable {
    type: yesno
    sql: ${TABLE}.deleteable ;;
  }
  dimension: dynamic {
    type: yesno
    sql: ${TABLE}.dynamic ;;
  }
  dimension: metadata_error {
    type: string
    sql: ${TABLE}.metadata_error ;;
  }
  dimension_group: metadata_last_processing_state_change {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.metadata_last_processing_state_change_at ;;
  }
  dimension_group: metadata_last_size_change {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.metadata_last_size_change_at ;;
  }
  dimension: metadata_processing {
    type: string
    sql: ${TABLE}.metadata_processing ;;
  }
  dimension: metadata_size {
    type: number
    sql: ${TABLE}.metadata_size ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: offset {
    type: number
    sql: ${TABLE}.offset ;;
  }
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, contact_list_member.count, marketing_email_contact_list.count]
  }
}
