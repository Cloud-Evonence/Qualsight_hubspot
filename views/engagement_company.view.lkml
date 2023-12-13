view: engagement_company {
  sql_table_name: `hubspot.engagement_company` ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }
  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.engagement_id ;;
  }
  dimension: engagement_type {
    type: string
    sql: ${TABLE}.engagement_type ;;
  }
  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }
  measure: count {
    type: count
    drill_fields: [company.property_company_id_c, company.property_first_conversion_event_name, company.property_name, company.property_recent_conversion_event_name, engagement.id]
  }
}
