connection: "hubspot"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: qualsight_looker_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: qualsight_looker_project_default_datagroup

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

explore: contact_form_submission {
  join: contact {
    type: left_outer 
    sql_on: ${contact_form_submission.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }
}

explore: contact_list {}

explore: company_property_history {
  join: company {
    type: left_outer 
    sql_on: ${company_property_history.company_id} = ${company.property_company_id_c} ;;
    relationship: many_to_one
  }
}

explore: contact {}

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

explore: company {}

explore: association_type {}

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
}

explore: contact_property_history {
  join: contact {
    type: left_outer 
    sql_on: ${contact_property_history.contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }
}

explore: deal_pipeline_stage {}

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

explore: email_event_bounce {}

explore: email_event_delivered {}

explore: email_event_deferred {}

explore: email_event_click {}

explore: email_event_dropped {}

explore: email_event_open {}

explore: email_event {
  join: email_campaign {
    type: left_outer 
    sql_on: ${email_event.email_campaign_id} = ${email_campaign.id} ;;
    relationship: many_to_one
  }
}

explore: email_event_status_change {}

explore: email_event_sent {}

explore: email_subscription_change {
  join: email_subscription {
    type: left_outer 
    sql_on: ${email_subscription_change.email_subscription_id} = ${email_subscription.id} ;;
    relationship: many_to_one
  }
}

explore: email_subscription {}

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

explore: email_event_suppressed {}

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

explore: engagement {}

explore: engagement_meeting {
  join: engagement {
    type: left_outer 
    sql_on: ${engagement_meeting.engagement_id} = ${engagement.id} ;;
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

explore: form {}

explore: geolocation_analytics_monthly_report {}

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

explore: geolocation_analytics_daily_report {}

explore: engagement_property_history {
  join: engagement {
    type: left_outer 
    sql_on: ${engagement_property_history.engagement_id} = ${engagement.id} ;;
    relationship: many_to_one
  }
}

explore: geolocation_analytics_overall_report {}

explore: geolocation_analytics_weekly_report {}

explore: marketing_email_campaign {
  join: marketing_email {
    type: left_outer 
    sql_on: ${marketing_email_campaign.marketing_email_id} = ${marketing_email.id} ;;
    relationship: many_to_one
  }
}

explore: marketing_email {}

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

explore: owner {}

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

explore: property_option {}

explore: sessions_analytics_daily_report {}

explore: sessions_analytics_monthly_report {}

explore: sessions_analytics_weekly_report {}

explore: property {}

explore: sources_analytics_daily_report {}

explore: sources_analytics_monthly_report {}

explore: sessions_analytics_overall_report {}

explore: sources_analytics_weekly_report {}

explore: sources_analytics_overall_report {}

explore: team {}

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

explore: ticket_pipeline {}

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

explore: ticket_pipeline_stage {}

explore: ticket {}

explore: ticket_property_history {
  join: ticket {
    type: left_outer 
    sql_on: ${ticket_property_history.ticket_id} = ${ticket.id} ;;
    relationship: many_to_one
  }
}

explore: totals_analytics_monthly_report {}

explore: users {}

explore: utm_analytics_daily_report {}

explore: totals_analytics_weekly_report {}

explore: totals_analytics_daily_report {}

explore: utm_analytics_overall_report {}

explore: utm_analytics_monthly_report {}

explore: utm_analytics_weekly_report {}

