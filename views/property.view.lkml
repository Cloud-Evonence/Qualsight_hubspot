view: property {
  sql_table_name: `hubspot.property` ;;

  dimension: _fivetran_id {
    type: string
    sql: ${TABLE}._fivetran_id ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: calculated {
    type: yesno
    sql: ${TABLE}.calculated ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: field_type {
    type: string
    sql: ${TABLE}.field_type ;;
  }
  dimension: group_name {
    type: string
    sql: ${TABLE}.group_name ;;
  }
  dimension: hubspot_defined {
    type: yesno
    sql: ${TABLE}.hubspot_defined ;;
  }
  dimension: hubspot_object {
    type: string
    sql: ${TABLE}.hubspot_object ;;
  }
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: show_currency_symbol {
    type: yesno
    sql: ${TABLE}.show_currency_symbol ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [group_name, name]
  }
}
