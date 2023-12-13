view: contact {
  sql_table_name: `hubspot.contact` ;;
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
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: property_account_tier {
    type: string
    sql: ${TABLE}.property_account_tier ;;
  }
  dimension: property_address {
    type: string
    sql: ${TABLE}.property_address ;;
  }
  dimension: property_associatedcompanyid {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_associatedcompanyid ;;
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
  dimension: property_comments_c {
    type: string
    sql: ${TABLE}.property_comments_c ;;
  }
  dimension: property_company {
    type: string
    sql: ${TABLE}.property_company ;;
  }
  dimension: property_company_size {
    type: number
    sql: ${TABLE}.property_company_size ;;
  }
  dimension: property_contact_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_contact_id_c ;;
  }
  dimension_group: property_contact_mql {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_contact_mql_at ;;
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
  dimension: property_currentlyinworkflow {
    type: yesno
    sql: ${TABLE}.property_currentlyinworkflow ;;
  }
  dimension: property_days_to_close {
    type: number
    sql: ${TABLE}.property_days_to_close ;;
  }
  dimension: property_demo_completed_c {
    type: yesno
    sql: ${TABLE}.property_demo_completed_c ;;
  }
  dimension: property_email {
    type: string
    sql: ${TABLE}.property_email ;;
  }
  dimension: property_event_c {
    type: string
    sql: ${TABLE}.property_event_c ;;
  }
  dimension: property_fax {
    type: string
    sql: ${TABLE}.property_fax ;;
  }
  dimension: property_first_conversion_c {
    type: string
    sql: ${TABLE}.property_first_conversion_c ;;
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
  dimension: property_first_touch_c {
    type: string
    sql: ${TABLE}.property_first_touch_c ;;
  }
  dimension: property_firstname {
    type: string
    sql: ${TABLE}.property_firstname ;;
  }
  dimension: property_how_can_we_help_ {
    type: string
    sql: ${TABLE}.property_how_can_we_help_ ;;
  }
  dimension: property_how_can_we_help_finalized {
    type: string
    sql: ${TABLE}.property_how_can_we_help_finalized ;;
  }
  dimension: property_hs_additional_emails {
    type: string
    sql: ${TABLE}.property_hs_additional_emails ;;
  }
  dimension: property_hs_all_accessible_team_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.property_hs_all_accessible_team_ids ;;
  }
  dimension: property_hs_all_contact_vids {
    type: string
    sql: ${TABLE}.property_hs_all_contact_vids ;;
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
  dimension: property_hs_analytics_average_page_views {
    type: number
    sql: ${TABLE}.property_hs_analytics_average_page_views ;;
  }
  dimension: property_hs_analytics_first_referrer {
    type: string
    sql: ${TABLE}.property_hs_analytics_first_referrer ;;
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
  dimension: property_hs_analytics_first_url {
    type: string
    sql: ${TABLE}.property_hs_analytics_first_url ;;
  }
  dimension_group: property_hs_analytics_first_visit_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_analytics_first_visit_timestamp ;;
  }
  dimension: property_hs_analytics_last_referrer {
    type: string
    sql: ${TABLE}.property_hs_analytics_last_referrer ;;
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
  dimension: property_hs_analytics_last_url {
    type: string
    sql: ${TABLE}.property_hs_analytics_last_url ;;
  }
  dimension_group: property_hs_analytics_last_visit_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_analytics_last_visit_timestamp ;;
  }
  dimension: property_hs_analytics_num_event_completions {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_event_completions ;;
  }
  dimension: property_hs_analytics_num_page_views {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_page_views ;;
  }
  dimension: property_hs_analytics_num_visits {
    type: number
    sql: ${TABLE}.property_hs_analytics_num_visits ;;
  }
  dimension: property_hs_analytics_revenue {
    type: number
    sql: ${TABLE}.property_hs_analytics_revenue ;;
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
  dimension: property_hs_calculated_form_submissions {
    type: string
    sql: ${TABLE}.property_hs_calculated_form_submissions ;;
  }
  dimension: property_hs_calculated_mobile_number {
    type: string
    sql: ${TABLE}.property_hs_calculated_mobile_number ;;
  }
  dimension: property_hs_calculated_phone_number {
    type: string
    sql: ${TABLE}.property_hs_calculated_phone_number ;;
  }
  dimension: property_hs_calculated_phone_number_country_code {
    type: string
    sql: ${TABLE}.property_hs_calculated_phone_number_country_code ;;
  }
  dimension: property_hs_count_is_unworked {
    type: number
    sql: ${TABLE}.property_hs_count_is_unworked ;;
  }
  dimension: property_hs_count_is_worked {
    type: number
    sql: ${TABLE}.property_hs_count_is_worked ;;
  }
  dimension: property_hs_created_by_user_id {
    type: number
    sql: ${TABLE}.property_hs_created_by_user_id ;;
  }
  dimension_group: property_hs_date_entered_58911892 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_58911892 ;;
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
  dimension_group: property_hs_date_entered_marketingqualifiedlead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_marketingqualifiedlead ;;
  }
  dimension_group: property_hs_date_entered_opportunity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_opportunity ;;
  }
  dimension_group: property_hs_date_entered_other {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_other ;;
  }
  dimension_group: property_hs_date_entered_salesqualifiedlead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_salesqualifiedlead ;;
  }
  dimension_group: property_hs_date_entered_subscriber {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_subscriber ;;
  }
  dimension_group: property_hs_date_exited_customer {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_customer ;;
  }
  dimension_group: property_hs_date_exited_lead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_lead ;;
  }
  dimension_group: property_hs_date_exited_marketingqualifiedlead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_marketingqualifiedlead ;;
  }
  dimension_group: property_hs_date_exited_opportunity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_opportunity ;;
  }
  dimension_group: property_hs_date_exited_salesqualifiedlead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_salesqualifiedlead ;;
  }
  dimension: property_hs_email_bad_address {
    type: yesno
    sql: ${TABLE}.property_hs_email_bad_address ;;
  }
  dimension: property_hs_email_bounce {
    type: number
    sql: ${TABLE}.property_hs_email_bounce ;;
  }
  dimension: property_hs_email_click {
    type: number
    sql: ${TABLE}.property_hs_email_click ;;
  }
  dimension: property_hs_email_delivered {
    type: number
    sql: ${TABLE}.property_hs_email_delivered ;;
  }
  dimension: property_hs_email_domain {
    type: string
    sql: ${TABLE}.property_hs_email_domain ;;
  }
  dimension_group: property_hs_email_first_click {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_email_first_click_date ;;
  }
  dimension_group: property_hs_email_first_open {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_email_first_open_date ;;
  }
  dimension_group: property_hs_email_first_send {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_email_first_send_date ;;
  }
  dimension: property_hs_email_hard_bounce_reason_enum {
    type: string
    sql: ${TABLE}.property_hs_email_hard_bounce_reason_enum ;;
  }
  dimension_group: property_hs_email_last_click {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_email_last_click_date ;;
  }
  dimension: property_hs_email_last_email_name {
    type: string
    sql: ${TABLE}.property_hs_email_last_email_name ;;
  }
  dimension_group: property_hs_email_last_open {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_email_last_open_date ;;
  }
  dimension_group: property_hs_email_last_send {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_email_last_send_date ;;
  }
  dimension: property_hs_email_open {
    type: number
    sql: ${TABLE}.property_hs_email_open ;;
  }
  dimension: property_hs_email_optout {
    type: yesno
    sql: ${TABLE}.property_hs_email_optout ;;
  }
  dimension: property_hs_email_optout_68038849 {
    type: yesno
    sql: ${TABLE}.property_hs_email_optout_68038849 ;;
  }
  dimension: property_hs_email_optout_75435688 {
    type: yesno
    sql: ${TABLE}.property_hs_email_optout_75435688 ;;
  }
  dimension: property_hs_email_optout_76503934 {
    type: yesno
    sql: ${TABLE}.property_hs_email_optout_76503934 ;;
  }
  dimension: property_hs_email_quarantined {
    type: yesno
    sql: ${TABLE}.property_hs_email_quarantined ;;
  }
  dimension: property_hs_email_quarantined_reason {
    type: string
    sql: ${TABLE}.property_hs_email_quarantined_reason ;;
  }
  dimension: property_hs_email_sends_since_last_engagement {
    type: number
    sql: ${TABLE}.property_hs_email_sends_since_last_engagement ;;
  }
  dimension: property_hs_first_engagement_object_id {
    type: number
    sql: ${TABLE}.property_hs_first_engagement_object_id ;;
  }
  dimension_group: property_hs_first_outreach {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_first_outreach_date ;;
  }
  dimension: property_hs_google_click_id {
    type: string
    sql: ${TABLE}.property_hs_google_click_id ;;
  }
  dimension: property_hs_ip_timezone {
    type: string
    sql: ${TABLE}.property_hs_ip_timezone ;;
  }
  dimension: property_hs_is_contact {
    type: yesno
    sql: ${TABLE}.property_hs_is_contact ;;
  }
  dimension: property_hs_is_unworked {
    type: yesno
    sql: ${TABLE}.property_hs_is_unworked ;;
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
  dimension_group: property_hs_latest_meeting_activity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_latest_meeting_activity ;;
  }
  dimension: property_hs_latest_source {
    type: string
    sql: ${TABLE}.property_hs_latest_source ;;
  }
  dimension: property_hs_latest_source_data_1 {
    type: string
    sql: ${TABLE}.property_hs_latest_source_data_1 ;;
  }
  dimension: property_hs_latest_source_data_2 {
    type: string
    sql: ${TABLE}.property_hs_latest_source_data_2 ;;
  }
  dimension_group: property_hs_latest_source_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_latest_source_timestamp ;;
  }
  dimension: property_hs_lead_status {
    type: string
    sql: ${TABLE}.property_hs_lead_status ;;
  }
  dimension_group: property_hs_lifecyclestage_customer {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lifecyclestage_customer_date ;;
  }
  dimension_group: property_hs_lifecyclestage_lead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lifecyclestage_lead_date ;;
  }
  dimension_group: property_hs_lifecyclestage_marketingqualifiedlead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lifecyclestage_marketingqualifiedlead_date ;;
  }
  dimension_group: property_hs_lifecyclestage_opportunity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lifecyclestage_opportunity_date ;;
  }
  dimension_group: property_hs_lifecyclestage_other {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lifecyclestage_other_date ;;
  }
  dimension_group: property_hs_lifecyclestage_salesqualifiedlead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lifecyclestage_salesqualifiedlead_date ;;
  }
  dimension_group: property_hs_lifecyclestage_subscriber {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_lifecyclestage_subscriber_date ;;
  }
  dimension: property_hs_linkedin_ad_clicked {
    type: yesno
    sql: ${TABLE}.property_hs_linkedin_ad_clicked ;;
  }
  dimension: property_hs_marketable_reason_id {
    type: string
    sql: ${TABLE}.property_hs_marketable_reason_id ;;
  }
  dimension: property_hs_marketable_reason_type {
    type: string
    sql: ${TABLE}.property_hs_marketable_reason_type ;;
  }
  dimension: property_hs_marketable_status {
    type: yesno
    sql: ${TABLE}.property_hs_marketable_status ;;
  }
  dimension: property_hs_marketable_until_renewal {
    type: yesno
    sql: ${TABLE}.property_hs_marketable_until_renewal ;;
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
  dimension: property_hs_pipeline {
    type: string
    sql: ${TABLE}.property_hs_pipeline ;;
  }
  dimension: property_hs_predictivecontactscore_v_2 {
    type: number
    sql: ${TABLE}.property_hs_predictivecontactscore_v_2 ;;
  }
  dimension: property_hs_predictivescoringtier {
    type: string
    sql: ${TABLE}.property_hs_predictivescoringtier ;;
  }
  dimension_group: property_hs_sa_first_engagement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_sa_first_engagement_date ;;
  }
  dimension: property_hs_sa_first_engagement_descr {
    type: string
    sql: ${TABLE}.property_hs_sa_first_engagement_descr ;;
  }
  dimension: property_hs_sa_first_engagement_object_type {
    type: string
    sql: ${TABLE}.property_hs_sa_first_engagement_object_type ;;
  }
  dimension: property_hs_searchable_calculated_mobile_number {
    type: number
    sql: ${TABLE}.property_hs_searchable_calculated_mobile_number ;;
  }
  dimension: property_hs_searchable_calculated_phone_number {
    type: string
    sql: ${TABLE}.property_hs_searchable_calculated_phone_number ;;
  }
  dimension: property_hs_sequences_actively_enrolled_count {
    type: number
    sql: ${TABLE}.property_hs_sequences_actively_enrolled_count ;;
  }
  dimension: property_hs_social_facebook_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_facebook_clicks ;;
  }
  dimension: property_hs_social_google_plus_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_google_plus_clicks ;;
  }
  dimension_group: property_hs_social_last_engagement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_social_last_engagement ;;
  }
  dimension: property_hs_social_linkedin_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_linkedin_clicks ;;
  }
  dimension: property_hs_social_num_broadcast_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_num_broadcast_clicks ;;
  }
  dimension: property_hs_social_twitter_clicks {
    type: number
    sql: ${TABLE}.property_hs_social_twitter_clicks ;;
  }
  dimension: property_hs_time_between_contact_creation_and_deal_close {
    type: number
    sql: ${TABLE}.property_hs_time_between_contact_creation_and_deal_close ;;
  }
  dimension: property_hs_time_between_contact_creation_and_deal_creation {
    type: number
    sql: ${TABLE}.property_hs_time_between_contact_creation_and_deal_creation ;;
  }
  dimension: property_hs_time_in_58911892 {
    type: number
    sql: ${TABLE}.property_hs_time_in_58911892 ;;
  }
  dimension: property_hs_time_in_customer {
    type: number
    sql: ${TABLE}.property_hs_time_in_customer ;;
  }
  dimension: property_hs_time_in_lead {
    type: number
    sql: ${TABLE}.property_hs_time_in_lead ;;
  }
  dimension: property_hs_time_in_marketingqualifiedlead {
    type: number
    sql: ${TABLE}.property_hs_time_in_marketingqualifiedlead ;;
  }
  dimension: property_hs_time_in_opportunity {
    type: number
    sql: ${TABLE}.property_hs_time_in_opportunity ;;
  }
  dimension: property_hs_time_in_other {
    type: number
    sql: ${TABLE}.property_hs_time_in_other ;;
  }
  dimension: property_hs_time_in_salesqualifiedlead {
    type: number
    sql: ${TABLE}.property_hs_time_in_salesqualifiedlead ;;
  }
  dimension: property_hs_time_in_subscriber {
    type: number
    sql: ${TABLE}.property_hs_time_in_subscriber ;;
  }
  dimension: property_hs_time_to_first_engagement {
    type: number
    sql: ${TABLE}.property_hs_time_to_first_engagement ;;
  }
  dimension: property_hs_time_to_move_from_lead_to_customer {
    type: number
    sql: ${TABLE}.property_hs_time_to_move_from_lead_to_customer ;;
  }
  dimension: property_hs_time_to_move_from_marketingqualifiedlead_to_customer {
    type: number
    sql: ${TABLE}.property_hs_time_to_move_from_marketingqualifiedlead_to_customer ;;
  }
  dimension: property_hs_time_to_move_from_opportunity_to_customer {
    type: number
    sql: ${TABLE}.property_hs_time_to_move_from_opportunity_to_customer ;;
  }
  dimension: property_hs_time_to_move_from_salesqualifiedlead_to_customer {
    type: number
    sql: ${TABLE}.property_hs_time_to_move_from_salesqualifiedlead_to_customer ;;
  }
  dimension: property_hs_timezone {
    type: string
    sql: ${TABLE}.property_hs_timezone ;;
  }
  dimension: property_hs_updated_by_user_id {
    type: number
    sql: ${TABLE}.property_hs_updated_by_user_id ;;
  }
  dimension: property_hs_user_ids_of_all_owners {
    type: string
    sql: ${TABLE}.property_hs_user_ids_of_all_owners ;;
  }
  dimension: property_hs_v_2_cumulative_time_in_customer {
    type: number
    sql: ${TABLE}.property_hs_v_2_cumulative_time_in_customer ;;
  }
  dimension: property_hs_v_2_cumulative_time_in_lead {
    type: number
    sql: ${TABLE}.property_hs_v_2_cumulative_time_in_lead ;;
  }
  dimension: property_hs_v_2_cumulative_time_in_marketingqualifiedlead {
    type: number
    sql: ${TABLE}.property_hs_v_2_cumulative_time_in_marketingqualifiedlead ;;
  }
  dimension: property_hs_v_2_cumulative_time_in_opportunity {
    type: number
    sql: ${TABLE}.property_hs_v_2_cumulative_time_in_opportunity ;;
  }
  dimension: property_hs_v_2_cumulative_time_in_salesqualifiedlead {
    type: number
    sql: ${TABLE}.property_hs_v_2_cumulative_time_in_salesqualifiedlead ;;
  }
  dimension_group: property_hs_v_2_date_entered_58911892 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_entered_58911892 ;;
  }
  dimension_group: property_hs_v_2_date_entered_customer {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_entered_customer ;;
  }
  dimension_group: property_hs_v_2_date_entered_lead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_entered_lead ;;
  }
  dimension_group: property_hs_v_2_date_entered_marketingqualifiedlead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_entered_marketingqualifiedlead ;;
  }
  dimension_group: property_hs_v_2_date_entered_opportunity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_entered_opportunity ;;
  }
  dimension_group: property_hs_v_2_date_entered_other {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_entered_other ;;
  }
  dimension_group: property_hs_v_2_date_entered_salesqualifiedlead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_entered_salesqualifiedlead ;;
  }
  dimension_group: property_hs_v_2_date_entered_subscriber {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_entered_subscriber ;;
  }
  dimension_group: property_hs_v_2_date_exited_customer {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_exited_customer ;;
  }
  dimension_group: property_hs_v_2_date_exited_lead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_exited_lead ;;
  }
  dimension_group: property_hs_v_2_date_exited_marketingqualifiedlead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_exited_marketingqualifiedlead ;;
  }
  dimension_group: property_hs_v_2_date_exited_opportunity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_exited_opportunity ;;
  }
  dimension_group: property_hs_v_2_date_exited_salesqualifiedlead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_v_2_date_exited_salesqualifiedlead ;;
  }
  dimension: property_hs_v_2_latest_time_in_customer {
    type: number
    sql: ${TABLE}.property_hs_v_2_latest_time_in_customer ;;
  }
  dimension: property_hs_v_2_latest_time_in_lead {
    type: number
    sql: ${TABLE}.property_hs_v_2_latest_time_in_lead ;;
  }
  dimension: property_hs_v_2_latest_time_in_marketingqualifiedlead {
    type: number
    sql: ${TABLE}.property_hs_v_2_latest_time_in_marketingqualifiedlead ;;
  }
  dimension: property_hs_v_2_latest_time_in_opportunity {
    type: number
    sql: ${TABLE}.property_hs_v_2_latest_time_in_opportunity ;;
  }
  dimension: property_hs_v_2_latest_time_in_salesqualifiedlead {
    type: number
    sql: ${TABLE}.property_hs_v_2_latest_time_in_salesqualifiedlead ;;
  }
  dimension: property_hs_was_imported {
    type: yesno
    sql: ${TABLE}.property_hs_was_imported ;;
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
  dimension: property_hubspotscore {
    type: number
    sql: ${TABLE}.property_hubspotscore ;;
  }
  dimension: property_industry {
    type: string
    sql: ${TABLE}.property_industry ;;
  }
  dimension: property_ip_city {
    type: string
    sql: ${TABLE}.property_ip_city ;;
  }
  dimension: property_ip_country {
    type: string
    sql: ${TABLE}.property_ip_country ;;
  }
  dimension: property_ip_country_code {
    type: string
    sql: ${TABLE}.property_ip_country_code ;;
  }
  dimension: property_ip_state {
    type: string
    sql: ${TABLE}.property_ip_state ;;
  }
  dimension: property_ip_state_code {
    type: string
    sql: ${TABLE}.property_ip_state_code ;;
  }
  dimension: property_is_priority_title {
    type: yesno
    sql: ${TABLE}.property_is_priority_title ;;
  }
  dimension: property_jobtitle {
    type: string
    sql: ${TABLE}.property_jobtitle ;;
  }
  dimension_group: property_lastmodifieddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_lastmodifieddate ;;
  }
  dimension: property_lastname {
    type: string
    sql: ${TABLE}.property_lastname ;;
  }
  dimension: property_leadsource {
    type: string
    sql: ${TABLE}.property_leadsource ;;
  }
  dimension: property_leadstatus {
    type: string
    sql: ${TABLE}.property_leadstatus ;;
  }
  dimension: property_lifecyclestage {
    type: string
    sql: ${TABLE}.property_lifecyclestage ;;
  }
  dimension: property_linkedin_url_c {
    type: string
    sql: ${TABLE}.property_linkedin_url_c ;;
  }
  dimension: property_marketing_contributed {
    type: yesno
    sql: ${TABLE}.property_marketing_contributed ;;
  }
  dimension: property_message {
    type: string
    sql: ${TABLE}.property_message ;;
  }
  dimension: property_message_c {
    type: string
    sql: ${TABLE}.property_message_c ;;
  }
  dimension: property_mobilephone {
    type: string
    sql: ${TABLE}.property_mobilephone ;;
  }
  dimension: property_most_recent_form_submission {
    type: string
    sql: ${TABLE}.property_most_recent_form_submission ;;
  }
  dimension_group: property_mql_at_c {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_mql_at_c ;;
  }
  dimension: property_neverbouncevalidationresult {
    type: string
    sql: ${TABLE}.property_neverbouncevalidationresult ;;
  }
  dimension: property_no_longer_at_company_c {
    type: yesno
    sql: ${TABLE}.property_no_longer_at_company_c ;;
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
  dimension: property_num_unique_conversion_events {
    type: number
    sql: ${TABLE}.property_num_unique_conversion_events ;;
  }
  dimension: property_of_sales_activities_c {
    type: number
    sql: ${TABLE}.property_of_sales_activities_c ;;
  }
  dimension: property_of_times_contacted_c {
    type: number
    sql: ${TABLE}.property_of_times_contacted_c ;;
  }
  dimension: property_outreach_sequence {
    type: string
    sql: ${TABLE}.property_outreach_sequence ;;
  }
  dimension: property_phone {
    type: string
    sql: ${TABLE}.property_phone ;;
  }
  dimension: property_rating {
    type: number
    sql: ${TABLE}.property_rating ;;
  }
  dimension: property_reason_disqualified_c {
    type: string
    sql: ${TABLE}.property_reason_disqualified_c ;;
  }
  dimension: property_recent_conversion_c {
    type: string
    sql: ${TABLE}.property_recent_conversion_c ;;
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
  dimension: property_salesforcecampaignids {
    type: string
    sql: ${TABLE}.property_salesforcecampaignids ;;
  }
  dimension: property_salesforcecontactid {
    type: string
    sql: ${TABLE}.property_salesforcecontactid ;;
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
  dimension: property_salesforceleadid {
    type: string
    sql: ${TABLE}.property_salesforceleadid ;;
  }
  dimension: property_salesforceopportunitystage {
    type: string
    sql: ${TABLE}.property_salesforceopportunitystage ;;
  }
  dimension: property_salesforceownerid {
    type: string
    sql: ${TABLE}.property_salesforceownerid ;;
  }
  dimension: property_salutation {
    type: string
    sql: ${TABLE}.property_salutation ;;
  }
  dimension: property_secondary_owner {
    type: number
    sql: ${TABLE}.property_secondary_owner ;;
  }
  dimension: property_sfcampaignid {
    type: string
    sql: ${TABLE}.property_sfcampaignid ;;
  }
  dimension: property_state {
    type: string
    sql: ${TABLE}.property_state ;;
  }
  dimension: property_total_revenue {
    type: number
    sql: ${TABLE}.property_total_revenue ;;
  }
  dimension: property_twitterhandle {
    type: string
    sql: ${TABLE}.property_twitterhandle ;;
  }
  dimension: property_twitterprofilephoto {
    type: string
    sql: ${TABLE}.property_twitterprofilephoto ;;
  }
  dimension: property_utm_campaign {
    type: string
    sql: ${TABLE}.property_utm_campaign ;;
  }
  dimension: property_utm_content {
    type: string
    sql: ${TABLE}.property_utm_content ;;
  }
  dimension: property_utm_medium {
    type: string
    sql: ${TABLE}.property_utm_medium ;;
  }
  dimension: property_utm_source {
    type: string
    sql: ${TABLE}.property_utm_source ;;
  }
  dimension: property_web_lead_type {
    type: string
    sql: ${TABLE}.property_web_lead_type ;;
  }
  dimension: property_website {
    type: string
    sql: ${TABLE}.property_website ;;
  }
  dimension: property_what_best_describes_your_need_finalized {
    type: string
    sql: ${TABLE}.property_what_best_describes_your_need_finalized ;;
  }
  dimension: property_work_email {
    type: string
    sql: ${TABLE}.property_work_email ;;
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
	id,
	property_first_conversion_event_name,
	property_firstname,
	property_lastname,
	property_hs_email_last_email_name,
	property_recent_conversion_event_name,
	contact_company.count,
	contact_form_submission.count,
	contact_list_member.count,
	contact_property_history.count,
	deal_contact.count,
	engagement_contact.count,
	marketing_email_contact.count
	]
  }

}
