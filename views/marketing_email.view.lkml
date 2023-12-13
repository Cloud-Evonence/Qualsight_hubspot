view: marketing_email {
  sql_table_name: `hubspot.marketing_email` ;;
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
  dimension: ab {
    type: yesno
    sql: ${TABLE}.ab ;;
  }
  dimension: ab_hours_to_wait {
    type: number
    sql: ${TABLE}.ab_hours_to_wait ;;
  }
  dimension: ab_sample_size_default {
    type: string
    sql: ${TABLE}.ab_sample_size_default ;;
  }
  dimension: ab_sampling_default {
    type: string
    sql: ${TABLE}.ab_sampling_default ;;
  }
  dimension: ab_status {
    type: string
    sql: ${TABLE}.ab_status ;;
  }
  dimension: ab_success_metric {
    type: string
    sql: ${TABLE}.ab_success_metric ;;
  }
  dimension: ab_test_id {
    type: string
    sql: ${TABLE}.ab_test_id ;;
  }
  dimension: ab_test_percentage {
    type: number
    sql: ${TABLE}.ab_test_percentage ;;
  }
  dimension: ab_variation {
    type: yesno
    sql: ${TABLE}.ab_variation ;;
  }
  dimension: absolute_url {
    type: string
    sql: ${TABLE}.absolute_url ;;
  }
  dimension: analytics_page_id {
    type: string
    sql: ${TABLE}.analytics_page_id ;;
  }
  dimension: analytics_page_type {
    type: string
    sql: ${TABLE}.analytics_page_type ;;
  }
  dimension: archived {
    type: yesno
    sql: ${TABLE}.archived ;;
  }
  dimension: author {
    type: string
    sql: ${TABLE}.author ;;
  }
  dimension_group: author {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.author_at ;;
  }
  dimension: author_email {
    type: string
    sql: ${TABLE}.author_email ;;
  }
  dimension: author_name {
    type: string
    sql: ${TABLE}.author_name ;;
  }
  dimension: author_user_id {
    type: number
    sql: ${TABLE}.author_user_id ;;
  }
  dimension: blog_email_type {
    type: string
    sql: ${TABLE}.blog_email_type ;;
  }
  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: can_spam_settings_id {
    type: number
    sql: ${TABLE}.can_spam_settings_id ;;
  }
  dimension: cloned_from {
    type: number
    sql: ${TABLE}.cloned_from ;;
  }
  dimension: create_page {
    type: yesno
    sql: ${TABLE}.create_page ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created ;;
  }
  dimension: currently_published {
    type: yesno
    sql: ${TABLE}.currently_published ;;
  }
  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }
  dimension: email_body {
    type: string
    sql: ${TABLE}.email_body ;;
  }
  dimension: email_note {
    type: string
    sql: ${TABLE}.email_note ;;
  }
  dimension: email_type {
    type: string
    sql: ${TABLE}.email_type ;;
  }
  dimension: feedback_email_category {
    type: string
    sql: ${TABLE}.feedback_email_category ;;
  }
  dimension: feedback_survey_id {
    type: number
    sql: ${TABLE}.feedback_survey_id ;;
  }
  dimension: folder_id {
    type: number
    sql: ${TABLE}.folder_id ;;
  }
  dimension_group: freeze {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.freeze_date ;;
  }
  dimension: from_name {
    type: string
    sql: ${TABLE}.from_name ;;
  }
  dimension: is_graymail_suppression_enabled {
    type: yesno
    sql: ${TABLE}.is_graymail_suppression_enabled ;;
  }
  dimension: is_local_timezone_send {
    type: yesno
    sql: ${TABLE}.is_local_timezone_send ;;
  }
  dimension: is_published {
    type: yesno
    sql: ${TABLE}.is_published ;;
  }
  dimension: is_recipient_fatigue_suppression_enabled {
    type: yesno
    sql: ${TABLE}.is_recipient_fatigue_suppression_enabled ;;
  }
  dimension: lead_flow_id {
    type: number
    sql: ${TABLE}.lead_flow_id ;;
  }
  dimension: live_domain {
    type: string
    sql: ${TABLE}.live_domain ;;
  }
  dimension: meta_description {
    type: string
    sql: ${TABLE}.meta_description ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension_group: page_expiry {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.page_expiry_date ;;
  }
  dimension: page_expiry_redirect_id {
    type: string
    sql: ${TABLE}.page_expiry_redirect_id ;;
  }
  dimension: page_redirected {
    type: yesno
    sql: ${TABLE}.page_redirected ;;
  }
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  dimension: preview_key {
    type: string
    sql: ${TABLE}.preview_key ;;
  }
  dimension: processing_status {
    type: string
    sql: ${TABLE}.processing_status ;;
  }
  dimension_group: publish {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.publish_date ;;
  }
  dimension: publish_immediately {
    type: yesno
    sql: ${TABLE}.publish_immediately ;;
  }
  dimension_group: published_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.published_at ;;
  }
  dimension: published_by_id {
    type: number
    sql: ${TABLE}.published_by_id ;;
  }
  dimension: published_by_name {
    type: string
    sql: ${TABLE}.published_by_name ;;
  }
  dimension: published_url {
    type: string
    sql: ${TABLE}.published_url ;;
  }
  dimension: reply_to {
    type: string
    sql: ${TABLE}.reply_to ;;
  }
  dimension: resolved_domain {
    type: string
    sql: ${TABLE}.resolved_domain ;;
  }
  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }
  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }
  dimension: subscription {
    type: number
    sql: ${TABLE}.subscription ;;
  }
  dimension: subscription_blog_id {
    type: number
    sql: ${TABLE}.subscription_blog_id ;;
  }
  dimension: subscription_name {
    type: string
    sql: ${TABLE}.subscription_name ;;
  }
  dimension: transactional {
    type: yesno
    sql: ${TABLE}.transactional ;;
  }
  dimension_group: unpublished {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.unpublished_at ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated ;;
  }
  dimension: updated_by_id {
    type: number
    sql: ${TABLE}.updated_by_id ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	author_name,
	subscription_name,
	from_name,
	campaign_name,
	published_by_name,
	marketing_email_campaign.count,
	marketing_email_contact_list.count,
	marketing_email_contact.count
	]
  }

}
