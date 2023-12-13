view: engagement_note {
  sql_table_name: `hubspot.engagement_note` ;;

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
  dimension: property_hs_attachment_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_hs_attachment_ids ;;
  }
  dimension: property_hs_body_preview_is_truncated {
    type: yesno
    sql: ${TABLE}.property_hs_body_preview_is_truncated ;;
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
  dimension_group: property_hs_lastmodifieddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lastmodifieddate ;;
  }
  dimension: property_hs_modified_by {
    type: number
    sql: ${TABLE}.property_hs_modified_by ;;
  }
  dimension: property_hs_object_id {
    type: number
    sql: ${TABLE}.property_hs_object_id ;;
  }
  dimension_group: property_hs_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_timestamp ;;
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
