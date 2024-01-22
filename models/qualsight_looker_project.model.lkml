connection: "hubspot"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: testing_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: testing_default_datagroup

explore: contact_list {}

explore: company_property_history {
  join: company {
    type: left_outer
    sql_on: ${company_property_history.company_id} = ${company.property_company_id_c} ;;
    relationship: many_to_one
  }
}

explore: contact_form_submission {
  join: contact {
    type: left_outer
    sql_on: ${contact_form_submission.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }

  join: form {
    type: left_outer
    sql_on: ${contact_form_submission.form_id} = ${form.guid} ;;
    relationship: many_to_one
  }
}

explore: association_type {}

explore: company {}

explore: contact {
  join: contact_form_submission {
    sql_on: ${contact.id} = ${contact_form_submission.contact_id} ;;
    relationship: many_to_one
  }
}

explore: contact_company {
  join: company {
    type: left_outer
    sql_on: ${contact_company.company_id} = ${company.property_company_id_c} ;;
    relationship: many_to_one
  }

  join: contact {
    type: left_outer
    sql_on: ${contact_company.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }
}

explore: contact_list_member {
  join: contact_list {
    type: left_outer
    sql_on: ${contact_list_member.contact_list_id} = ${contact_list.id} ;;
    relationship: many_to_one
  }

  join: contact {
    type: left_outer
    sql_on: ${contact_list_member.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }
}

explore: contact_property_history {
  join: contact {
    type: left_outer
    sql_on: ${contact_property_history.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }
}

explore: deal_contact {
  join: contact {
    type: left_outer
    sql_on: ${deal_contact.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }

  join: deal {
    type: left_outer
    sql_on: ${deal_contact.deal_id} = ${deal.deal_id} ;;
    relationship: many_to_one
  }

  join: owner {
    type: left_outer
    sql_on: ${deal.owner_id} = ${owner.owner_id} ;;
    relationship: many_to_one
  }
}

explore: deal_pipeline_stage {}

explore: deal_company {
  join: company {
    type: left_outer
    sql_on: ${deal_company.company_id} = ${company.property_company_id_c} ;;
    relationship: many_to_one
  }

  join: deal {
    type: left_outer
    sql_on: ${deal_company.deal_id} = ${deal.deal_id} ;;
    relationship: many_to_one
  }

  join: owner {
    type: left_outer
    sql_on: ${deal.owner_id} = ${owner.owner_id} ;;
    relationship: many_to_one
  }
}

explore: deal_pipeline {}

explore: deal {
  join: owner {
    type: left_outer
    sql_on: ${deal.owner_id} = ${owner.owner_id} ;;
    relationship: many_to_one
  }

  join: deal_pipeline_stage {
    type: left_outer
    sql_on: ${deal.deal_pipeline_stage_id} = ${deal_pipeline_stage.stage_id} ;;
    relationship: many_to_one
  }

}

explore: deal_property_history {
  join: deal {
    type: left_outer
    sql_on: ${deal_property_history.deal_id} = ${deal.deal_id} ;;
    relationship: many_to_one
  }

  join: owner {
    type: left_outer
    sql_on: ${deal.owner_id} = ${owner.owner_id} ;;
    relationship: many_to_one
  }
}

explore: deal_stage {
  join: deal {
    type: left_outer
    sql_on: ${deal_stage.deal_id} = ${deal.deal_id} ;;
    relationship: many_to_one
  }

  join: owner {
    type: left_outer
    sql_on: ${deal.owner_id} = ${owner.owner_id} ;;
    relationship: many_to_one
  }
}

explore: email_campaign {}

explore: email_event_delivered {}

explore: email_event_deferred {}

explore: email_event_bounce {}

explore: email_event_click {}

explore: email_event {
  join: email_campaign {
    type: left_outer
    sql_on: ${email_event.email_campaign_id} = ${email_campaign.id} ;;
    relationship: one_to_one
  }
}

explore: email_event_dropped {}

explore: email_event_open {
  join: email_event_dropped {
    type: inner
    sql_on: ${email_event_dropped.id} = ${email_event_open.id} ;;
    relationship: many_to_one
  }
}

explore: email_event_sent {}

explore: email_event_status_change {}

explore: engagement {}

explore: email_subscription {}

explore: email_event_suppressed {}

explore: email_subscription_change {
  join: email_subscription {
    type: left_outer
    sql_on: ${email_subscription_change.email_subscription_id} = ${email_subscription.id} ;;
    relationship: many_to_one
  }
}

explore: engagement_contact {
  join: engagement {
    type: left_outer
    sql_on: ${engagement_contact.engagement_id} = ${engagement.id} ;;
    relationship: many_to_one
  }

  join: contact {
    type: left_outer
    sql_on: ${engagement_contact.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }
}

explore: engagement_company {
  join: company {
    type: left_outer
    sql_on: ${engagement_company.company_id} = ${company.property_company_id_c} ;;
    relationship: many_to_one
  }

  join: engagement {
    type: left_outer
    sql_on: ${engagement_company.engagement_id} = ${engagement.id} ;;
    relationship: many_to_one
  }
}

explore: engagement_meeting {
  join: engagement {
    type: left_outer
    sql_on: ${engagement_meeting.engagement_id} = ${engagement.id} ;;
    relationship: many_to_one
  }
}

explore: engagement_deal {
  join: engagement {
    type: left_outer
    sql_on: ${engagement_deal.engagement_id} = ${engagement.id} ;;
    relationship: many_to_one
  }

  join: deal {
    type: left_outer
    sql_on: ${engagement_deal.deal_id} = ${deal.deal_id} ;;
    relationship: many_to_one
  }

  join: owner {
    type: left_outer
    sql_on: ${deal.owner_id} = ${owner.owner_id} ;;
    relationship: many_to_one
  }
}

explore: engagement_note {
  join: engagement {
    type: left_outer
    sql_on: ${engagement_note.engagement_id} = ${engagement.id} ;;
    relationship: many_to_one
  }
}

explore: engagement_property_history {
  join: engagement {
    type: left_outer
    sql_on: ${engagement_property_history.engagement_id} = ${engagement.id} ;;
    relationship: many_to_one
  }
}

explore: geolocation_analytics_daily_report {}

explore: form {}

explore: geolocation_analytics_monthly_report {}

explore: geolocation_analytics_overall_report {}

explore: geolocation_analytics_weekly_report {}

explore: marketing_email_contact {
  join: marketing_email {
    type: left_outer
    sql_on: ${marketing_email_contact.marketing_email_id} = ${marketing_email.id} ;;
    relationship: many_to_one
  }

  join: contact {
    type: left_outer
    sql_on: ${marketing_email_contact.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }
}

explore: marketing_email_campaign {
  join: marketing_email {
    type: left_outer
    sql_on: ${marketing_email_campaign.marketing_email_id} = ${marketing_email.id} ;;
    relationship: many_to_one
  }
}

explore: marketing_email {}

explore: marketing_email_contact_list {
  join: marketing_email {
    type: left_outer
    sql_on: ${marketing_email_contact_list.marketing_email_id} = ${marketing_email.id} ;;
    relationship: many_to_one
  }

  join: contact_list {
    type: left_outer
    sql_on: ${marketing_email_contact_list.contact_list_id} = ${contact_list.id} ;;
    relationship: many_to_one
  }
}

explore: owner_team {
  join: owner {
    type: left_outer
    sql_on: ${owner_team.owner_id} = ${owner.owner_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${owner_team.team_id} = ${team.id} ;;
    relationship: many_to_one
  }
}

explore: property {}

explore: sessions_analytics_monthly_report {}

explore: sessions_analytics_daily_report {}

explore: property_option {}

explore: sessions_analytics_overall_report {}

explore: owner {}

explore: sessions_analytics_weekly_report {}

explore: team {}

explore: sources_analytics_overall_report {}

explore: sources_analytics_daily_report {}

explore: sources_analytics_monthly_report {}

explore: sources_analytics_weekly_report {}

explore: team_user {
  join: users {
    type: left_outer
    sql_on: ${team_user.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${team_user.team_id} = ${team.id} ;;
    relationship: many_to_one
  }
}

explore: ticket {}

explore: ticket_engagement {
  join: engagement {
    type: left_outer
    sql_on: ${ticket_engagement.engagement_id} = ${engagement.id} ;;
    relationship: many_to_one
  }

  join: ticket {
    type: left_outer
    sql_on: ${ticket_engagement.ticket_id} = ${ticket.id} ;;
    relationship: many_to_one
  }
}

explore: ticket_pipeline {}

explore: ticket_pipeline_stage {}

explore: ticket_property_history {
  join: ticket {
    type: left_outer
    sql_on: ${ticket_property_history.ticket_id} = ${ticket.id} ;;
    relationship: many_to_one
  }
}

explore: totals_analytics_daily_report {}

explore: totals_analytics_monthly_report {}

explore: users {}

explore: totals_analytics_weekly_report {}

explore: utm_analytics_daily_report {}

explore: utm_analytics_overall_report {}

explore: utm_analytics_weekly_report {}

explore: utm_analytics_monthly_report {}

explore: conversion_rate {}

explore: landing_page_conversion_rate {}

explore: pages {}

explore: d_hubspot {}
