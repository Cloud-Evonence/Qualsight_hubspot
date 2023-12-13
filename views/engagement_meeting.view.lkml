view: engagement_meeting {
  sql_table_name: `hubspot.engagement_meeting` ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }
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
  dimension: property_hs_body_preview {
    type: string
    sql: ${TABLE}.property_hs_body_preview ;;
  }
  dimension: property_hs_body_preview_html {
    type: string
    sql: ${TABLE}.property_hs_body_preview_html ;;
  }
  dimension: property_hs_body_preview_is_truncated {
    type: yesno
    sql: ${TABLE}.property_hs_body_preview_is_truncated ;;
  }
  dimension_group: property_hs_contact_first_outreach {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_contact_first_outreach_date ;;
  }
  dimension: property_hs_created_by {
    type: number
    sql: ${TABLE}.property_hs_created_by ;;
  }
  dimension: property_hs_created_by_user_id {
    type: number
    sql: ${TABLE}.property_hs_created_by_user_id ;;
  }
  dimension_group: property_hs_createdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_createdate ;;
  }
  dimension: property_hs_i_cal_uid {
    type: string
    sql: ${TABLE}.property_hs_i_cal_uid ;;
  }
  dimension_group: property_hs_lastmodifieddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lastmodifieddate ;;
  }
  dimension: property_hs_meeting_body {
    type: string
    sql: ${TABLE}.property_hs_meeting_body ;;
  }
  dimension_group: property_hs_meeting_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_meeting_end_time ;;
  }
  dimension: property_hs_meeting_external_url {
    type: string
    sql: ${TABLE}.property_hs_meeting_external_url ;;
  }
  dimension: property_hs_meeting_location {
    type: string
    sql: ${TABLE}.property_hs_meeting_location ;;
  }
  dimension: property_hs_meeting_source {
    type: string
    sql: ${TABLE}.property_hs_meeting_source ;;
  }
  dimension: property_hs_meeting_source_id {
    type: string
    sql: ${TABLE}.property_hs_meeting_source_id ;;
  }
  dimension_group: property_hs_meeting_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_meeting_start_time ;;
  }
  dimension: property_hs_meeting_title {
    type: string
    sql: ${TABLE}.property_hs_meeting_title ;;
  }
  dimension: property_hs_modified_by {
    type: number
    sql: ${TABLE}.property_hs_modified_by ;;
  }
  dimension: property_hs_object_id {
    type: number
    sql: ${TABLE}.property_hs_object_id ;;
  }
  dimension: property_hs_object_source {
    type: string
    sql: ${TABLE}.property_hs_object_source ;;
  }
  dimension: property_hs_object_source_id {
    type: string
    sql: ${TABLE}.property_hs_object_source_id ;;
  }
  dimension: property_hs_object_source_user_id {
    type: number
    sql: ${TABLE}.property_hs_object_source_user_id ;;
  }
  dimension: property_hs_outcome_canceled_count {
    type: number
    sql: ${TABLE}.property_hs_outcome_canceled_count ;;
  }
  dimension: property_hs_outcome_completed_count {
    type: number
    sql: ${TABLE}.property_hs_outcome_completed_count ;;
  }
  dimension: property_hs_outcome_no_show_count {
    type: number
    sql: ${TABLE}.property_hs_outcome_no_show_count ;;
  }
  dimension: property_hs_outcome_rescheduled_count {
    type: number
    sql: ${TABLE}.property_hs_outcome_rescheduled_count ;;
  }
  dimension: property_hs_outcome_scheduled_count {
    type: number
    sql: ${TABLE}.property_hs_outcome_scheduled_count ;;
  }
  dimension: property_hs_time_to_book_meeting_from_first_contact {
    type: number
    sql: ${TABLE}.property_hs_time_to_book_meeting_from_first_contact ;;
  }
  dimension_group: property_hs_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_timestamp ;;
  }
  dimension: property_hs_unique_id {
    type: string
    sql: ${TABLE}.property_hs_unique_id ;;
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
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
    drill_fields: [engagement.id]
  }
}
