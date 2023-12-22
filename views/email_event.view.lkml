view: email_event {
  sql_table_name: `hubspot.email_event` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: app_id {
    type: number
    sql: ${TABLE}.app_id ;;
  }
  dimension_group: caused_by_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.caused_by_created ;;
  }
  dimension: caused_by_id {
    type: string
    sql: ${TABLE}.caused_by_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created ;;
  }
  dimension: email_campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.email_campaign_id ;;
  }
  dimension: filtered_event {
    type: yesno
    sql: ${TABLE}.filtered_event ;;
  }
  dimension_group: obsoleted_by_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.obsoleted_by_created ;;
  }
  dimension: obsoleted_by_id {
    type: string
    sql: ${TABLE}.obsoleted_by_id ;;
  }
  dimension: portal_id {
    type: number
    sql: ${TABLE}.portal_id ;;
  }
  dimension: recipient {
    type: string
    sql: ${TABLE}.recipient ;;
  }
  dimension_group: sent_by_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.sent_by_created ;;
  }
  dimension: sent_by_id {
    type: string
    sql: ${TABLE}.sent_by_id ;;
  }
  dimension: custom_type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: type {
    type: string
    #sql: ${TABLE}.type ;;
    case: {
      when: {
        sql: ${TABLE}.type = "SENT" and ${TABLE}.filtered_event is null ;;
        label: "SENT"
      }
      when: {
        sql: ${TABLE}.type = "DELIVERED" and ${TABLE}.filtered_event is null ;;
        label: "DELIVERED"
      }
      when: {
        sql: ${TABLE}.type = "OPEN" and ${TABLE}.filtered_event is true ;;
        label: "OPEN"
      }
      when: {
        sql: ${TABLE}.type = "CLICK" and ${TABLE}.filtered_event is true ;;
        label: "CLICK"
      }
      when: {
        sql: ${TABLE}.type = "BOUNCE" and ${TABLE}.filtered_event is null ;;
        label: "BOUNCE"
      }
      when: {
        sql: ${TABLE}.type = "DROPPED" and ${TABLE}.filtered_event is null ;;
        label: "NOT SENT"
      }
      when: {
        sql: ${TABLE}.type = "STATUSCHANGE" and ${TABLE}.filtered_event is
         null ;;
        label: "UNSUBSCRIBE"
      }
      }
      }




  measure: count {
    type: count
    drill_fields: [id, email_campaign.app_name, email_campaign.name, email_campaign.id]
  }

  measure: Click{
    type: count
    filters: [custom_type: "CLICK"]
  }

  measure: Sent{
    type: count
    filters: [custom_type: "SENT"]
  }


}
