view: company {
  required_access_grants: [can_view_data]
  sql_table_name: `hubspot.company` ;;
  drill_fields: [property_company_id_c]

  dimension: property_company_id_c {
    primary_key: yes
    type: number
    sql: ${TABLE}.property_company_id_c ;;
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
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  dimension: property_address {
    type: string
    sql: ${TABLE}.property_address ;;
  }
  dimension: property_address_2 {
    type: string
    sql: ${TABLE}.property_address_2 ;;
  }
  dimension: property_annual_revenue_c {
    type: number
    sql: ${TABLE}.property_annual_revenue_c ;;
  }
  dimension: property_annualrevenue {
    type: number
    sql: ${TABLE}.property_annualrevenue ;;
  }
  dimension: property_city {
    type: string
    sql: ${TABLE}.property_city ;;
  }
  dimension_group: property_closedate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_closedate ;;
  }
  dimension: property_country {
    type: string
    sql: ${TABLE}.property_country ;;
  }
  dimension_group: property_createdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_createdate ;;
  }
  dimension: property_days_to_close {
    type: number
    sql: ${TABLE}.property_days_to_close ;;
  }
  dimension: property_description {
    type: string
    sql: ${TABLE}.property_description ;;
  }
  dimension: property_domain {
    type: string
    sql: ${TABLE}.property_domain ;;
  }
  dimension: property_facebook_company_page {
    type: string
    sql: ${TABLE}.property_facebook_company_page ;;
  }
  dimension: property_facebook_company_page_c {
    type: string
    sql: ${TABLE}.property_facebook_company_page_c ;;
  }
  dimension_group: property_first_contact_createdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_first_contact_createdate ;;
  }
  dimension_group: property_first_conversion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_first_conversion_date ;;
  }
  dimension: property_first_conversion_event_name {
    type: string
    sql: ${TABLE}.property_first_conversion_event_name ;;
  }
  dimension_group: property_first_deal_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_first_deal_created_date ;;
  }
  dimension_group: property_fiscal_year_c {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_fiscal_year_c ;;
  }
  dimension: property_founded_year {
    type: number
    sql: ${TABLE}.property_founded_year ;;
  }
  dimension: property_hs_all_accessible_team_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_hs_all_accessible_team_ids ;;
  }
  dimension: property_hs_all_owner_ids {
    type: string
    sql: ${TABLE}.property_hs_all_owner_ids ;;
  }
  dimension: property_hs_all_team_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_hs_all_team_ids ;;
  }
  dimension_group: property_hs_analytics_first_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_analytics_first_timestamp ;;
  }
  dimension: property_hs_analytics_first_touch_converting_campaign {
    type: string
    sql: ${TABLE}.property_hs_analytics_first_touch_converting_campaign ;;
  }
  dimension_group: property_hs_analytics_first_visit_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_analytics_first_visit_timestamp ;;
  }
  dimension_group: property_hs_analytics_last_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_analytics_last_timestamp ;;
  }
  dimension: property_hs_analytics_last_touch_converting_campaign {
    type: string
    sql: ${TABLE}.property_hs_analytics_last_touch_converting_campaign ;;
  }
  dimension_group: property_hs_analytics_last_visit_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_analytics_last_visit_timestamp ;;
  }
  dimension: property_hs_analytics_latest_source {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source ;;
  }
  dimension: property_hs_analytics_latest_source_data_1 {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source_data_1 ;;
  }
  dimension: property_hs_analytics_latest_source_data_2 {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source_data_2 ;;
  }
  dimension_group: property_hs_analytics_latest_source_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_analytics_latest_source_timestamp ;;
  }
  dimension: property_hs_analytics_num_page_views {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_page_views ;;
  }
  dimension: property_hs_analytics_num_visits {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_visits ;;
  }
  dimension: property_hs_analytics_source {
    type: string
    sql: ${TABLE}.property_hs_analytics_source ;;
  }
  dimension: property_hs_analytics_source_data_1 {
    type: string
    sql: ${TABLE}.property_hs_analytics_source_data_1 ;;
  }
  dimension: property_hs_analytics_source_data_2 {
    type: string
    sql: ${TABLE}.property_hs_analytics_source_data_2 ;;
  }
  dimension: property_hs_annual_revenue_currency_code {
    type: string
    sql: ${TABLE}.property_hs_annual_revenue_currency_code ;;
  }
  dimension_group: property_hs_date_entered_customer {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_customer ;;
  }
  dimension_group: property_hs_date_entered_lead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_lead ;;
  }
  dimension_group: property_hs_date_entered_opportunity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_opportunity ;;
  }
  dimension_group: property_hs_date_exited_lead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_lead ;;
  }
  dimension_group: property_hs_date_exited_opportunity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_opportunity ;;
  }
  dimension_group: property_hs_last_booked_meeting {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_last_booked_meeting_date ;;
  }
  dimension_group: property_hs_last_sales_activity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_last_sales_activity_date ;;
  }
  dimension_group: property_hs_last_sales_activity_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_last_sales_activity_timestamp ;;
  }
  dimension: property_hs_last_sales_activity_type {
    type: string
    sql: ${TABLE}.property_hs_last_sales_activity_type ;;
  }
  dimension_group: property_hs_lastmodifieddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lastmodifieddate ;;
  }
  dimension_group: property_hs_latest_meeting_activity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_latest_meeting_activity ;;
  }
  dimension: property_hs_num_blockers {
    type: number
    sql: ${TABLE}.property_hs_num_blockers ;;
  }
  dimension: property_hs_num_child_companies {
    type: number
    sql: ${TABLE}.property_hs_num_child_companies ;;
  }
  dimension: property_hs_num_contacts_with_buying_roles {
    type: number
    sql: ${TABLE}.property_hs_num_contacts_with_buying_roles ;;
  }
  dimension: property_hs_num_decision_makers {
    type: number
    sql: ${TABLE}.property_hs_num_decision_makers ;;
  }
  dimension: property_hs_num_open_deals {
    type: number
    sql: ${TABLE}.property_hs_num_open_deals ;;
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
  dimension: property_hs_pipeline {
    type: string
    sql: ${TABLE}.property_hs_pipeline ;;
  }
  dimension: property_hs_predictivecontactscore_v_2 {
    type: number
    sql: ${TABLE}.property_hs_predictivecontactscore_v_2 ;;
  }
  dimension: property_hs_target_account_probability {
    type: number
    sql: ${TABLE}.property_hs_target_account_probability ;;
  }
  dimension: property_hs_time_in_customer {
    type: number
    sql: ${TABLE}.property_hs_time_in_customer ;;
  }
  dimension: property_hs_time_in_lead {
    type: number
    sql: ${TABLE}.property_hs_time_in_lead ;;
  }
  dimension: property_hs_time_in_opportunity {
    type: number
    sql: ${TABLE}.property_hs_time_in_opportunity ;;
  }
  dimension: property_hs_total_deal_value {
    type: number
    sql: ${TABLE}.property_hs_total_deal_value ;;
  }
  dimension: property_hs_updated_by_user_id {
    type: number
    sql: ${TABLE}.property_hs_updated_by_user_id ;;
  }
  dimension: property_hs_user_ids_of_all_owners {
    type: string
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
  dimension: property_industry {
    type: string
    sql: ${TABLE}.property_industry ;;
  }
  dimension: property_is_public {
    type: yesno
    sql: ${TABLE}.property_is_public ;;
  }
  dimension: property_is_public_c {
    type: yesno
    sql: ${TABLE}.property_is_public_c ;;
  }
  dimension: property_key_account_c {
    type: yesno
    sql: ${TABLE}.property_key_account_c ;;
  }
  dimension: property_lifecyclestage {
    type: string
    sql: ${TABLE}.property_lifecyclestage ;;
  }
  dimension: property_linkedin_bio_c {
    type: string
    sql: ${TABLE}.property_linkedin_bio_c ;;
  }
  dimension: property_linkedin_company_page {
    type: string
    sql: ${TABLE}.property_linkedin_company_page ;;
  }
  dimension: property_linkedin_company_page_c {
    type: string
    sql: ${TABLE}.property_linkedin_company_page_c ;;
  }
  dimension: property_linkedinbio {
    type: string
    sql: ${TABLE}.property_linkedinbio ;;
  }
  dimension: property_name {
    type: string
    sql: ${TABLE}.property_name ;;
  }
  dimension_group: property_notes_last_contacted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_notes_last_contacted ;;
  }
  dimension_group: property_notes_last_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_notes_last_updated ;;
  }
  dimension_group: property_notes_next_activity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_notes_next_activity_date ;;
  }
  dimension: property_num_associated_contacts {
    type: number
    sql: ${TABLE}.property_num_associated_contacts ;;
  }
  dimension: property_num_associated_deals {
    type: number
    sql: ${TABLE}.property_num_associated_deals ;;
  }
  dimension: property_num_contacted_notes {
    type: number
    sql: ${TABLE}.property_num_contacted_notes ;;
  }
  dimension: property_num_conversion_events {
    type: number
    sql: ${TABLE}.property_num_conversion_events ;;
  }
  dimension: property_num_notes {
    type: number
    sql: ${TABLE}.property_num_notes ;;
  }
  dimension: property_numberofemployees {
    type: number
    sql: ${TABLE}.property_numberofemployees ;;
  }
  dimension: property_phone {
    type: string
    sql: ${TABLE}.property_phone ;;
  }
  dimension_group: property_recent_conversion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_recent_conversion_date ;;
  }
  dimension: property_recent_conversion_event_name {
    type: string
    sql: ${TABLE}.property_recent_conversion_event_name ;;
  }
  dimension: property_recent_deal_amount {
    type: number
    sql: ${TABLE}.property_recent_deal_amount ;;
  }
  dimension_group: property_recent_deal_close {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_recent_deal_close_date ;;
  }
  dimension: property_salesforceaccountid {
    type: string
    sql: ${TABLE}.property_salesforceaccountid ;;
  }
  dimension: property_salesforcedeleted {
    type: yesno
    sql: ${TABLE}.property_salesforcedeleted ;;
  }
  dimension_group: property_salesforcelastsynctime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_salesforcelastsynctime ;;
  }
  dimension: property_secondary_owner {
    type: number
    sql: ${TABLE}.property_secondary_owner ;;
  }
  dimension: property_state {
    type: string
    sql: ${TABLE}.property_state ;;
  }
  dimension: property_timezone {
    type: string
    sql: ${TABLE}.property_timezone ;;
  }
  dimension: property_total_money_raised {
    type: string
    sql: ${TABLE}.property_total_money_raised ;;
  }
  dimension: property_total_money_raised_c {
    type: string
    sql: ${TABLE}.property_total_money_raised_c ;;
  }
  dimension: property_total_revenue {
    type: number
    sql: ${TABLE}.property_total_revenue ;;
  }
  dimension: property_twitter_handle_c {
    type: string
    sql: ${TABLE}.property_twitter_handle_c ;;
  }
  dimension: property_twitterhandle {
    type: string
    sql: ${TABLE}.property_twitterhandle ;;
  }
  dimension: property_type {
    type: string
    sql: ${TABLE}.property_type ;;
  }
  dimension: property_web_technologies {
    type: string
    sql: ${TABLE}.property_web_technologies ;;
  }
  dimension: property_web_technologies_c {
    type: string
    sql: ${TABLE}.property_web_technologies_c ;;
  }
  dimension: property_website {
    type: string
    sql: ${TABLE}.property_website ;;
  }
  dimension: property_year_founded_c {
    type: number
    sql: ${TABLE}.property_year_founded_c ;;
  }
  dimension: property_zip {
    type: string
    sql: ${TABLE}.property_zip ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  property_company_id_c,
  property_first_conversion_event_name,
  property_name,
  property_recent_conversion_event_name,
  contact_company.count,
  company_property_history.count,
  deal_company.count,
  engagement_company.count
  ]
  }

}
