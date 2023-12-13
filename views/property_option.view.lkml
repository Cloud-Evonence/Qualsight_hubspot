view: property_option {
  sql_table_name: `hubspot.property_option` ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: display_order {
    type: number
    sql: ${TABLE}.display_order ;;
  }
  dimension: hidden {
    type: yesno
    sql: ${TABLE}.hidden ;;
  }
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }
  dimension: property_id {
    type: string
    sql: ${TABLE}.property_id ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
  }
}
