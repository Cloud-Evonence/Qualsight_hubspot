view: deal {
  sql_table_name: `hubspot.deal` ;;
  drill_fields: [deal_id]

  dimension: deal_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.deal_id ;;
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
  dimension: deal_pipeline_id {
    type: string
    sql: ${TABLE}.deal_pipeline_id ;;
  }
  dimension: deal_pipeline_stage_id {
    type: string
    sql: ${TABLE}.deal_pipeline_stage_id ;;
  }
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: owner_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.owner_id ;;
  }
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  dimension: property_amount {
    type: number
    sql: ${TABLE}.property_amount ;;
  }
  dimension: property_amount_in_home_currency {
    type: number
    sql: ${TABLE}.property_amount_in_home_currency ;;
  }
  dimension: property_budget_confirmed_c {
    type: yesno
    sql: ${TABLE}.property_budget_confirmed_c ;;
  }
  dimension_group: property_click_up_date_completed_c {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_click_up_date_completed_c ;;
  }
  dimension: property_click_up_qp_c {
    type: string
    sql: ${TABLE}.property_click_up_qp_c ;;
  }
  dimension_group: property_closedate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_closedate ;;
  }
  dimension: property_contract_type_c {
    type: string
    sql: ${TABLE}.property_contract_type_c ;;
  }
  dimension_group: property_createdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_createdate ;;
  }
  dimension_group: property_date_invoice_submitted_c {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_date_invoice_submitted_c ;;
  }
  dimension: property_days_to_close {
    type: number
    sql: ${TABLE}.property_days_to_close ;;
  }
  dimension: property_dealname {
    type: string
    sql: ${TABLE}.property_dealname ;;
  }
  dimension: property_dealtype {
    type: string
    sql: ${TABLE}.property_dealtype ;;
  }
  dimension: property_description {
    type: string
    sql: ${TABLE}.property_description ;;
  }
  dimension: property_discovery_completed_c {
    type: yesno
    sql: ${TABLE}.property_discovery_completed_c ;;
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
  dimension: property_hs_analytics_latest_source {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source ;;
  }
  dimension: property_hs_analytics_latest_source_company {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source_company ;;
  }
  dimension: property_hs_analytics_latest_source_contact {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source_contact ;;
  }
  dimension: property_hs_analytics_latest_source_data_1 {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source_data_1 ;;
  }
  dimension: property_hs_analytics_latest_source_data_1_company {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source_data_1_company ;;
  }
  dimension: property_hs_analytics_latest_source_data_1_contact {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source_data_1_contact ;;
  }
  dimension: property_hs_analytics_latest_source_data_2 {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source_data_2 ;;
  }
  dimension: property_hs_analytics_latest_source_data_2_company {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source_data_2_company ;;
  }
  dimension: property_hs_analytics_latest_source_data_2_contact {
    type: string
    sql: ${TABLE}.property_hs_analytics_latest_source_data_2_contact ;;
  }
  dimension_group: property_hs_analytics_latest_source_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_analytics_latest_source_timestamp ;;
  }
  dimension_group: property_hs_analytics_latest_source_timestamp_contact {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_analytics_latest_source_timestamp_contact ;;
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
  dimension: property_hs_closed_amount {
    type: number
    sql: ${TABLE}.property_hs_closed_amount ;;
  }
  dimension: property_hs_closed_amount_in_home_currency {
    type: number
    sql: ${TABLE}.property_hs_closed_amount_in_home_currency ;;
  }
  dimension: property_hs_closed_won_count {
    type: number
    sql: ${TABLE}.property_hs_closed_won_count ;;
  }
  dimension_group: property_hs_closed_won {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_closed_won_date ;;
  }
  dimension_group: property_hs_createdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_createdate ;;
  }
  dimension_group: property_hs_date_entered_54_bf_5_b_9_c_2198_4_ba_9_9292_e_87_c_926_ffdca_2071474924 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_54_bf_5_b_9_c_2198_4_ba_9_9292_e_87_c_926_ffdca_2071474924 ;;
  }
  dimension_group: property_hs_date_entered_72517767_b_6_c_1_4_f_90_b_948_e_148665_b_4715_381671683 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_72517767_b_6_c_1_4_f_90_b_948_e_148665_b_4715_381671683 ;;
  }
  dimension_group: property_hs_date_entered_8_d_004259_a_456_44_a_8_a_6_d_4_7_d_0274_c_17123_1929352324 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_8_d_004259_a_456_44_a_8_a_6_d_4_7_d_0274_c_17123_1929352324 ;;
  }
  dimension_group: property_hs_date_entered_aeb_7_bc_43_74_c_6_434_f_b_921_957_c_2_b_6_d_0_cd_3_235877579 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_aeb_7_bc_43_74_c_6_434_f_b_921_957_c_2_b_6_d_0_cd_3_235877579 ;;
  }
  dimension_group: property_hs_date_entered_c_5_c_32804_3671_4405_a_9_f_2_67072_ee_43490_1270718756 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_c_5_c_32804_3671_4405_a_9_f_2_67072_ee_43490_1270718756 ;;
  }
  dimension_group: property_hs_date_entered_c_7352_fb_6_52_de_4_e_29_8042_c_16324369715_1959120708 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_c_7352_fb_6_52_de_4_e_29_8042_c_16324369715_1959120708 ;;
  }
  dimension_group: property_hs_date_entered_d_28_ee_1_a_1_ec_3_c_4849_b_628_027_c_745_b_0_e_98_235286264 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_d_28_ee_1_a_1_ec_3_c_4849_b_628_027_c_745_b_0_e_98_235286264 ;;
  }
  dimension_group: property_hs_date_entered_d_57735_bb_11_d_7_45_f_7_aaae_fdf_825_ca_9_db_0_2059385854 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_d_57735_bb_11_d_7_45_f_7_aaae_fdf_825_ca_9_db_0_2059385854 ;;
  }
  dimension_group: property_hs_date_entered_e_6_c_6_b_08_a_13_f_8_41_e_9_91_d_3_e_3_c_3_c_3_e_347_a_5_1649728727 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_e_6_c_6_b_08_a_13_f_8_41_e_9_91_d_3_e_3_c_3_c_3_e_347_a_5_1649728727 ;;
  }
  dimension_group: property_hs_date_entered_ebd_01181_5_df_5_47_a_6_8046_eea_9_b_2230140_1893339614 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_entered_ebd_01181_5_df_5_47_a_6_8046_eea_9_b_2230140_1893339614 ;;
  }
  dimension_group: property_hs_date_exited_72517767_b_6_c_1_4_f_90_b_948_e_148665_b_4715_381671683 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_72517767_b_6_c_1_4_f_90_b_948_e_148665_b_4715_381671683 ;;
  }
  dimension_group: property_hs_date_exited_8_d_004259_a_456_44_a_8_a_6_d_4_7_d_0274_c_17123_1929352324 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_8_d_004259_a_456_44_a_8_a_6_d_4_7_d_0274_c_17123_1929352324 ;;
  }
  dimension_group: property_hs_date_exited_aeb_7_bc_43_74_c_6_434_f_b_921_957_c_2_b_6_d_0_cd_3_235877579 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_aeb_7_bc_43_74_c_6_434_f_b_921_957_c_2_b_6_d_0_cd_3_235877579 ;;
  }
  dimension_group: property_hs_date_exited_c_5_c_32804_3671_4405_a_9_f_2_67072_ee_43490_1270718756 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_c_5_c_32804_3671_4405_a_9_f_2_67072_ee_43490_1270718756 ;;
  }
  dimension_group: property_hs_date_exited_c_7352_fb_6_52_de_4_e_29_8042_c_16324369715_1959120708 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_c_7352_fb_6_52_de_4_e_29_8042_c_16324369715_1959120708 ;;
  }
  dimension_group: property_hs_date_exited_d_28_ee_1_a_1_ec_3_c_4849_b_628_027_c_745_b_0_e_98_235286264 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_d_28_ee_1_a_1_ec_3_c_4849_b_628_027_c_745_b_0_e_98_235286264 ;;
  }
  dimension_group: property_hs_date_exited_d_57735_bb_11_d_7_45_f_7_aaae_fdf_825_ca_9_db_0_2059385854 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_d_57735_bb_11_d_7_45_f_7_aaae_fdf_825_ca_9_db_0_2059385854 ;;
  }
  dimension_group: property_hs_date_exited_e_6_c_6_b_08_a_13_f_8_41_e_9_91_d_3_e_3_c_3_c_3_e_347_a_5_1649728727 {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_hs_date_exited_e_6_c_6_b_08_a_13_f_8_41_e_9_91_d_3_e_3_c_3_c_3_e_347_a_5_1649728727 ;;
  }
  dimension: property_hs_days_to_close_raw {
    type: number
    sql: ${TABLE}.property_hs_days_to_close_raw ;;
  }
  dimension: property_hs_deal_stage_probability {
    type: number
    sql: ${TABLE}.property_hs_deal_stage_probability ;;
  }
  dimension: property_hs_deal_stage_probability_shadow {
    type: number
    sql: ${TABLE}.property_hs_deal_stage_probability_shadow ;;
  }
  dimension: property_hs_forecast_amount {
    type: number
    sql: ${TABLE}.property_hs_forecast_amount ;;
  }
  dimension: property_hs_is_closed {
    type: yesno
    sql: ${TABLE}.property_hs_is_closed ;;
  }
  dimension: property_hs_is_closed_won {
    type: yesno
    sql: ${TABLE}.property_hs_is_closed_won ;;
  }
  dimension: property_hs_is_deal_split {
    type: yesno
    sql: ${TABLE}.property_hs_is_deal_split ;;
  }
  dimension: property_hs_is_open_count {
    type: number
    sql: ${TABLE}.property_hs_is_open_count ;;
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
  dimension: property_hs_num_associated_active_deal_registrations {
    type: number
    sql: ${TABLE}.property_hs_num_associated_active_deal_registrations ;;
  }
  dimension: property_hs_num_associated_deal_registrations {
    type: number
    sql: ${TABLE}.property_hs_num_associated_deal_registrations ;;
  }
  dimension: property_hs_num_associated_deal_splits {
    type: number
    sql: ${TABLE}.property_hs_num_associated_deal_splits ;;
  }
  dimension: property_hs_num_of_associated_line_items {
    type: number
    sql: ${TABLE}.property_hs_num_of_associated_line_items ;;
  }
  dimension: property_hs_num_target_accounts {
    type: number
    sql: ${TABLE}.property_hs_num_target_accounts ;;
  }
  dimension: property_hs_object_id {
    type: number
    sql: ${TABLE}.property_hs_object_id ;;
  }
  dimension: property_hs_object_source {
    type: string
    sql: ${TABLE}.property_hs_object_source ;;
  }
  dimension: property_hs_projected_amount {
    type: number
    sql: ${TABLE}.property_hs_projected_amount ;;
  }
  dimension: property_hs_projected_amount_in_home_currency {
    type: number
    sql: ${TABLE}.property_hs_projected_amount_in_home_currency ;;
  }
  dimension: property_hs_salesforceopportunityid {
    type: string
    sql: ${TABLE}.property_hs_salesforceopportunityid ;;
  }
  dimension: property_hs_time_in_54_bf_5_b_9_c_2198_4_ba_9_9292_e_87_c_926_ffdca_2071474924 {
    type: number
    sql: ${TABLE}.property_hs_time_in_54_bf_5_b_9_c_2198_4_ba_9_9292_e_87_c_926_ffdca_2071474924 ;;
  }
  dimension: property_hs_time_in_72517767_b_6_c_1_4_f_90_b_948_e_148665_b_4715_381671683 {
    type: number
    sql: ${TABLE}.property_hs_time_in_72517767_b_6_c_1_4_f_90_b_948_e_148665_b_4715_381671683 ;;
  }
  dimension: property_hs_time_in_8_d_004259_a_456_44_a_8_a_6_d_4_7_d_0274_c_17123_1929352324 {
    type: number
    sql: ${TABLE}.property_hs_time_in_8_d_004259_a_456_44_a_8_a_6_d_4_7_d_0274_c_17123_1929352324 ;;
  }
  dimension: property_hs_time_in_aeb_7_bc_43_74_c_6_434_f_b_921_957_c_2_b_6_d_0_cd_3_235877579 {
    type: number
    sql: ${TABLE}.property_hs_time_in_aeb_7_bc_43_74_c_6_434_f_b_921_957_c_2_b_6_d_0_cd_3_235877579 ;;
  }
  dimension: property_hs_time_in_c_5_c_32804_3671_4405_a_9_f_2_67072_ee_43490_1270718756 {
    type: number
    sql: ${TABLE}.property_hs_time_in_c_5_c_32804_3671_4405_a_9_f_2_67072_ee_43490_1270718756 ;;
  }
  dimension: property_hs_time_in_c_7352_fb_6_52_de_4_e_29_8042_c_16324369715_1959120708 {
    type: number
    sql: ${TABLE}.property_hs_time_in_c_7352_fb_6_52_de_4_e_29_8042_c_16324369715_1959120708 ;;
  }
  dimension: property_hs_time_in_d_28_ee_1_a_1_ec_3_c_4849_b_628_027_c_745_b_0_e_98_235286264 {
    type: number
    sql: ${TABLE}.property_hs_time_in_d_28_ee_1_a_1_ec_3_c_4849_b_628_027_c_745_b_0_e_98_235286264 ;;
  }
  dimension: property_hs_time_in_d_57735_bb_11_d_7_45_f_7_aaae_fdf_825_ca_9_db_0_2059385854 {
    type: number
    sql: ${TABLE}.property_hs_time_in_d_57735_bb_11_d_7_45_f_7_aaae_fdf_825_ca_9_db_0_2059385854 ;;
  }
  dimension: property_hs_time_in_e_6_c_6_b_08_a_13_f_8_41_e_9_91_d_3_e_3_c_3_c_3_e_347_a_5_1649728727 {
    type: number
    sql: ${TABLE}.property_hs_time_in_e_6_c_6_b_08_a_13_f_8_41_e_9_91_d_3_e_3_c_3_c_3_e_347_a_5_1649728727 ;;
  }
  dimension: property_hs_time_in_ebd_01181_5_df_5_47_a_6_8046_eea_9_b_2230140_1893339614 {
    type: number
    sql: ${TABLE}.property_hs_time_in_ebd_01181_5_df_5_47_a_6_8046_eea_9_b_2230140_1893339614 ;;
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
  dimension: property_hubspot_team_id {
    type: number
    sql: ${TABLE}.property_hubspot_team_id ;;
  }
  dimension: property_invoice_amount_c {
    type: number
    sql: ${TABLE}.property_invoice_amount_c ;;
  }
  dimension: property_invoice_submitted_c {
    type: string
    sql: ${TABLE}.property_invoice_submitted_c ;;
  }
  dimension: property_loss_reason_c {
    type: string
    sql: ${TABLE}.property_loss_reason_c ;;
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
  dimension: property_num_contacted_notes {
    type: number
    sql: ${TABLE}.property_num_contacted_notes ;;
  }
  dimension: property_num_notes {
    type: number
    sql: ${TABLE}.property_num_notes ;;
  }
  dimension: property_po_amount_c {
    type: number
    sql: ${TABLE}.property_po_amount_c ;;
  }
  dimension: property_po_c {
    type: string
    sql: ${TABLE}.property_po_c ;;
  }
  dimension: property_po_name_c {
    type: string
    sql: ${TABLE}.property_po_name_c ;;
  }
  dimension: property_proposal_link_c {
    type: string
    sql: ${TABLE}.property_proposal_link_c ;;
  }
  dimension: property_qualsights_project_c {
    type: string
    sql: ${TABLE}.property_qualsights_project_c ;;
  }
  dimension: property_quickbooks_invoice_c {
    type: string
    sql: ${TABLE}.property_quickbooks_invoice_c ;;
  }
  dimension: property_roi_analysis_completed_c {
    type: yesno
    sql: ${TABLE}.property_roi_analysis_completed_c ;;
  }
  dimension: property_sales_rating_c {
    type: number
    sql: ${TABLE}.property_sales_rating_c ;;
  }
  dimension_group: property_salesforcelastsynctime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.property_salesforcelastsynctime ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	deal_id,
	property_dealname,
	owner.owner_id,
	owner.last_name,
	owner.first_name,
	deal_company.count,
	deal_contact.count,
	deal_property_history.count,
	deal_stage.count,
	engagement_deal.count
	]
  }

}
