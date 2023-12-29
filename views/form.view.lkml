view: form {
  sql_table_name: `hubspot.form` ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: css_class {
    type: string
    sql: ${TABLE}.css_class ;;
  }
  dimension: follow_up_id {
    type: string
    sql: ${TABLE}.follow_up_id ;;
  }
  dimension: form_type {
    type: string
    sql: ${TABLE}.form_type ;;
  }
  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }
  dimension: lead_nurturing_campaign_id {
    type: string
    sql: ${TABLE}.lead_nurturing_campaign_id ;;
  }
  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: custom_name {
    type: string
    sql: CASE
          WHEN LOWER(${TABLE}.name) LIKE '%ebook%' THEN 'Ebook'
          WHEN LOWER(${TABLE}.name) LIKE '%newsletter%' THEN 'Newsletter'
          WHEN LOWER(${TABLE}.name) LIKE '%survey%' THEN 'survey'
          WHEN LOWER(${TABLE}.name) LIKE '%webinar%' THEN 'webinar'
          WHEN LOWER(${TABLE}.name) LIKE '%review%' THEN 'review'
          WHEN LOWER(${TABLE}.name) LIKE '%event%' THEN 'event'
          WHEN LOWER(${TABLE}.name) LIKE '%thank%' THEN 'thank'
          WHEN LOWER(${TABLE}.name) LIKE '%product launch%' THEN 'product launch'
          WHEN LOWER(${TABLE}.name) LIKE '%automated%' THEN 'automated'
          WHEN LOWER(${TABLE}.name) LIKE '%case study%"%' THEN 'case study%"'
          WHEN LOWER(${TABLE}.name) LIKE '%guide%' THEN 'guide'
          WHEN LOWER(${TABLE}.name) LIKE '%follow up%' THEN 'follow up'
          ELSE 'Others'
        END ;;
    label: "EmailGroup"
  }

  dimension: notify_recipients {
    type: string
    sql: ${TABLE}.notify_recipients ;;
  }
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  dimension: redirect {
    type: string
    sql: ${TABLE}.redirect ;;
  }
  dimension: submit_text {
    type: string
    sql: ${TABLE}.submit_text ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
