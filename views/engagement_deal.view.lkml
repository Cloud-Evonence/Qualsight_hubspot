view: engagement_deal {
  sql_table_name: `hubspot.engagement_deal` ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.deal_id ;;
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
    drill_fields: [engagement.id, deal.deal_id, deal.property_dealname]
  }
}
