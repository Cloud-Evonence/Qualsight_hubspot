view: ticket {
  sql_table_name: `hubspot.ticket` ;;
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
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  dimension: property_content {
    type: string
    sql: ${TABLE}.property_content ;;
  }
  dimension_group: property_createdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_createdate ;;
  }
  dimension: property_hs_all_accessible_team_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_hs_all_accessible_team_ids ;;
  }
  dimension: property_hs_all_owner_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_hs_all_owner_ids ;;
  }
  dimension: property_hs_all_team_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_hs_all_team_ids ;;
  }
  dimension: property_hs_created_by_user_id {
    type: number
    sql: ${TABLE}.property_hs_created_by_user_id ;;
  }
  dimension_group: property_hs_date_entered_1 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_1 ;;
  }
  dimension_group: property_hs_helpdesk_sort_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_helpdesk_sort_timestamp ;;
  }
  dimension: property_hs_last_email_activity {
    type: string
    sql: ${TABLE}.property_hs_last_email_activity ;;
  }
  dimension: property_hs_last_message_from_visitor {
    type: yesno
    sql: ${TABLE}.property_hs_last_message_from_visitor ;;
  }
  dimension_group: property_hs_lastactivitydate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lastactivitydate ;;
  }
  dimension_group: property_hs_lastmodifieddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lastmodifieddate ;;
  }
  dimension: property_hs_num_associated_companies {
    type: number
    sql: ${TABLE}.property_hs_num_associated_companies ;;
  }
  dimension: property_hs_num_times_contacted {
    type: number
    sql: ${TABLE}.property_hs_num_times_contacted ;;
  }
  dimension: property_hs_object_id {
    type: number
    sql: ${TABLE}.property_hs_object_id ;;
  }
  dimension: property_hs_pipeline {
    type: number
    sql: ${TABLE}.property_hs_pipeline ;;
  }
  dimension: property_hs_pipeline_stage {
    type: number
    sql: ${TABLE}.property_hs_pipeline_stage ;;
  }
  dimension: property_hs_ticket_id {
    type: number
    sql: ${TABLE}.property_hs_ticket_id ;;
  }
  dimension: property_hs_ticket_priority {
    type: string
    sql: ${TABLE}.property_hs_ticket_priority ;;
  }
  dimension: property_hs_time_in_1 {
    type: number
    sql: ${TABLE}.property_hs_time_in_1 ;;
  }
  dimension: property_hs_updated_by_user_id {
    type: number
    sql: ${TABLE}.property_hs_updated_by_user_id ;;
  }
  dimension: property_hs_user_ids_of_all_owners {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_hs_user_ids_of_all_owners ;;
  }
  dimension_group: property_hubspot_owner_assigneddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hubspot_owner_assigneddate ;;
  }
  dimension: property_hubspot_owner_id {
    type: number
    sql: ${TABLE}.property_hubspot_owner_id ;;
  }
  dimension: property_hubspot_team_id {
    type: number
    sql: ${TABLE}.property_hubspot_team_id ;;
  }
  dimension_group: property_last_engagement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_last_engagement_date ;;
  }
  dimension_group: property_notes_last_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_notes_last_updated ;;
  }
  dimension: property_num_contacted_notes {
    type: number
    sql: ${TABLE}.property_num_contacted_notes ;;
  }
  dimension: property_num_notes {
    type: number
    sql: ${TABLE}.property_num_notes ;;
  }
  dimension: property_source_type {
    type: string
    sql: ${TABLE}.property_source_type ;;
  }
  dimension: property_subject {
    type: string
    sql: ${TABLE}.property_subject ;;
  }
  measure: count {
    type: count
    drill_fields: [id, ticket_engagement.count, ticket_property_history.count]
  }
}
